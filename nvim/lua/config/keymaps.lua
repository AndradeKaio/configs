-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<ESC>", opts)
vim.keymap.set({ "n", "i", "v", "x", "t", "c" }, "<C-q>", "<Esc>:q<CR>", opts)
vim.keymap.set("x", "p", function()
  return 'pgv"' .. vim.v.register .. "y"
end, { expr = true, noremap = true })

for i = 1, 9 do
  vim.keymap.set("n", "<leader>" .. i, function()
    require("bufferline").go_to(i, true)
  end, { desc = "Go to Buffer " .. i })
end
