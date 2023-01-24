
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'sumneko_lua',
  'tsserver',
  'html',
  'cssls',
  'emmet_ls',
  -- 'eslint',
  'pyright'
})

lsp.nvim_workspace()

lsp.setup()
