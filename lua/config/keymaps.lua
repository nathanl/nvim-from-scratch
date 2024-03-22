------------------------------------------------------------
-- Keyboard Mappings
------------------------------------------------------------

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local set = vim.keymap.set

-- what are these
set("n", "<Left>", "<C-w>h")
set("n", "<Down>", "<C-w>j")
set("n", "<Up>", "<C-w>k")
set("n", "<Right>", "<C-w>l")

-- this is rad, I used enter but escape is better
set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

-- if I open this window and ctrl-w out of it I can't get back to it to kill it
set("n", "<Leader>p", "<Cmd>Lazy<CR>", { desc = "Plugins" })

-- copy current file and line number to the system clipboard
set("n", "<LocalLeader>l", ":let @+ = expand('%') . ':' . line('.')<cr>")
-- copy current file's name to system clipboard
set("n", "<LocalLeader>n", ":let @+ = expand('%')<cr>")
