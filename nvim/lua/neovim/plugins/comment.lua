
require('Comment').setup()

local ft = require('Comment.ft')

ft
.set('yaml', '#%s')
.set('javascript', {'//%s', '/*%s*/'})
.set('json', {'//%s'})

ft.javascript = {'//%s', '/*%s*/'}
ft.yaml = '#%s'

ft({'go', 'rust'}, {'//%s', '/*%s*/'})
ft({'toml', 'graphql'}, '#%s')
