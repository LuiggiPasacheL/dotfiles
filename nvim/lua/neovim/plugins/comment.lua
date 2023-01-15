
require('Comment').setup()

local ft = require('Comment.ft')

ft
.set('yaml', '#%s')
.set('javascript', {'//%s', '/*%s*/'})
.set('json', {'//%s'})
.set({'toml', 'graphql'}, '#%s')
.set({'go', 'rust'}, {'//%s', '/*%s*/'})
