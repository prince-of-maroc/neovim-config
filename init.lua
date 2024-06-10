require "options"
require "keymaps"
require "plugins/plugins"

vim.cmd("colorscheme darkplus")

-- Set line number colorscheme
vim.cmd "hi CursorLineNR guifg=white"
vim.cmd "set cursorline"
vim.cmd "set cursorlineopt=number"
