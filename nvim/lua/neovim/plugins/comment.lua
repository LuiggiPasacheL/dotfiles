
require('Comment').setup()

local ft = require('Comment.ft')

-- 1. Using set function
ft
.set('yaml', '#%s')
.set('javascript', {'//%s', '/*%s*/'})
.set('json', {'//%s'})

-- 2. Metatable magic
ft.javascript = {'//%s', '/*%s*/'}
ft.yaml = '#%s'

-- Multiple filetypes
ft({'go', 'rust'}, {'//%s', '/*%s*/'})
ft({'toml', 'graphql'}, '#%s')
