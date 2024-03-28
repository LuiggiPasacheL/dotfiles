return {
    "folke/todo-comments.nvim",
    config = function()
        local todo = require("todo-comments")
        todo.setup {
            -- Requirement
            -- scoop install ripgrep
            -- dnf install ripgrep
        }
    end,
    cond = Not_vscode()
}
