local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- File saving
keymap("n", "<C-s>", "<Esc>:w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>", opts)
keymap("v", "<C-s>", "<Esc>:w<CR>", opts)
keymap("x", "<C-s>", "<Esc>:w<CR>", opts)
keymap("t", "<C-s>", "<Esc>:w<CR>", opts)
keymap("c", "<C-s>", "<Esc>:w<CR>", opts)

keymap("n", "<C-q>", "<Esc>:q<CR>", opts)
keymap("i", "<C-q>", "<Esc>:q<CR>", opts)
keymap("v", "<C-q>", "<Esc>:q<CR>", opts)
keymap("x", "<C-q>", "<Esc>:q<CR>", opts)
keymap("t", "<C-q>", "<Esc>:q<CR>", opts)
keymap("c", "<C-q>", "<Esc>:q<CR>", opts)


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- NerdTree
keymap("n", "<leader>e", ":NERDTreeToggle<CR>", opts)
keymap("n", "<leader>r", ":NERDTreeFind<CR>", opts)
keymap("n", "<leader><tab>", "gt", opts)

keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

  -- Visual --
  -- Stay in indent mode
  keymap("v", "<", "<gv", opts)
  keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
keymap("n", "<leader>p", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>Telescope live_grep<cr>", opts)

-- Diagnostics
keymap("n", "<leader>i", ":lua vim.diagnostic.open_float()<CR>", opts)

