-- Written by @Fadynagh from http://fadyio.com
-- Email:me@fadyio.com
-- Github: @Fadyio
--
-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- SearchBox
--[[ keymap("n", "/", ":SearchBoxIncSearch<CR>", { noremap = true }) ]]
keymap("n", "<leader>s/", ":SearchBoxReplace<CR>", { noremap = true })

-- unhighlight what you searched for
keymap("n", "<Esc><Esc>", "<Esc>:nohlsearch<CR><Esc>", { noremap = true })
-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- comment-box.nvim
local keymap = vim.api.nvim_set_keymap

-- left aligned fixed size box with left aligned text
keymap("n", "<Leader>nn", "<Cmd>lua require('comment-box').lbox()<CR>", {})
keymap("v", "<Leader>nn", "<Cmd>lua require('comment-box').lbox()<CR>", {})

-- centered adapted box with centered text
keymap("n", "<Leader>nc", "<Cmd>lua require('comment-box').accbox()<CR>", {})
keymap("v", "<Leader>nc", "<Cmd>lua require('comment-box').accbox()<CR>", {})

-- centered line
keymap("n", "<Leader>nl", "<Cmd>lua require('comment-box').cline()<CR>", {})
keymap("i", "<M-l>", "<Cmd>lua require('comment-box').cline()<CR>", {})
