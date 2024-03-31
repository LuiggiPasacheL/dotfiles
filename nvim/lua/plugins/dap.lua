-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.

return {
    'mfussenegger/nvim-dap',
    dependencies = {
        -- Creates a beautiful debugger UI
        'rcarriga/nvim-dap-ui',

        -- Required dependency for nvim-dap-ui
        'nvim-neotest/nvim-nio',

        -- Installs the debug adapters for you
        'williamboman/mason.nvim',
        'jay-babu/mason-nvim-dap.nvim',

        -- Add your own debuggers here
        'leoluz/nvim-dap-go',
    },
    config = function()
        local dap = require 'dap'
        local dapui = require 'dapui'

        require('mason-nvim-dap').setup {
            -- Makes a best effort to setup the various debuggers with
            -- reasonable debug configurations
            automatic_setup = true,

            -- You can provide additional configuration to the handlers,
            -- see mason-nvim-dap README for more information
            handlers = {},

            -- You'll need to check that you have the required things installed
            -- online, please don't ask me how to install them :)
            ensure_installed = {
                -- Update this to ensure that you have the debuggers for the langs you want
                'delve',
            },
        }


        local function continue()
            if vim.fn.filereadable(".vscode/launch.json") == 1 then
                require("dap.ext.vscode").load_launchjs()
            end
            dap.continue()
        end

        -- Basic debugging keymaps, feel free to change to your liking!
        vim.keymap.set('n', '<F5>', continue, { desc = 'Debug: Start/Continue' })
        vim.keymap.set('n', '<F1>', dap.step_into, { desc = 'Debug: Step Into' })
        vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Debug: Step Over' })
        vim.keymap.set('n', '<F3>', dap.step_out, { desc = 'Debug: Step Out' })
        vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
        vim.keymap.set('n', '<leader>B', function()
            dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end, { desc = 'Debug: Set Breakpoint' })

        -- Dap UI setup
        -- For more information, see |:help nvim-dap-ui|
        dapui.setup {
            -- Set icons to characters that are more likely to work in every terminal.
            --    Feel free to remove or use ones that you like more! :)
            --    Don't feel like these are good choices.
            icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
            controls = {
                icons = {
                    pause = '⏸',
                    play = '▶',
                    step_into = '⏎',
                    step_over = '⏭',
                    step_out = '⏮',
                    step_back = 'b',
                    run_last = '▶▶',
                    terminate = '⏹',
                    disconnect = '⏏',
                },
            },
        }

        -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
        vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'Debug: See last session result.' })

        dap.listeners.after.event_initialized['dapui_config'] = dapui.open
        dap.listeners.before.event_terminated['dapui_config'] = dapui.close
        dap.listeners.before.event_exited['dapui_config'] = dapui.close

        -- Install golang specific config
        require('dap-go').setup()

        dap.adapters.go = {
            type = "server",
            port = 38697,
            executable = {
                command = "dlv",
                args = { "dap", "-l", "127.0.0.1:38697" },
            },
            enrich_config = function(finalConfig, on_config)
                local final_config = vim.deepcopy(finalConfig)

                -- Placeholder expansion for launch directives
                local placeholders = {
                    ["${file}"] = function(_)
                        return vim.fn.expand("%:p")
                    end,
                    ["${fileBasename}"] = function(_)
                        return vim.fn.expand("%:t")
                    end,
                    ["${fileBasenameNoExtension}"] = function(_)
                        return vim.fn.fnamemodify(vim.fn.expand("%:t"), ":r")
                    end,
                    ["${fileDirname}"] = function(_)
                        return vim.fn.expand("%:p:h")
                    end,
                    ["${fileExtname}"] = function(_)
                        return vim.fn.expand("%:e")
                    end,
                    ["${relativeFile}"] = function(_)
                        return vim.fn.expand("%:.")
                    end,
                    ["${relativeFileDirname}"] = function(_)
                        return vim.fn.fnamemodify(vim.fn.expand("%:.:h"), ":r")
                    end,
                    ["${workspaceFolder}"] = function(_)
                        return vim.fn.getcwd()
                    end,
                    ["${workspaceFolderBasename}"] = function(_)
                        return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
                    end,
                    ["${env:([%w_]+)}"] = function(match)
                        return os.getenv(match) or ""
                    end,
                }

                if final_config.envFile then
                    local filePath = final_config.envFile
                    for key, fn in pairs(placeholders) do
                        filePath = filePath:gsub(key, fn)
                    end

                    for line in io.lines(filePath) do
                        local words = {}
                        for word in string.gmatch(line, "[^=]+") do
                            table.insert(words, word)
                        end
                        if not final_config.env then
                            final_config.env = {}
                        end
                        final_config.env[words[1]] = words[2]
                    end
                end

                on_config(final_config)
            end,
        }
    end,
    cond = Not_vscode()
}
