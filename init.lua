require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.git"
-- comments
require("ibl").setup()
-- status line
require('feline').setup()
-- current theme
vim.cmd "colorscheme catppuccin-mocha"

