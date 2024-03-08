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


-- TODO make this work?
-- " reload .vimrc
-- map <leader>rc :source ~/.vimrc<cr>

-- TODO make this work
-- " copy current relative filename into clipboard
-- map <LocalLeader>n :let @+ = expand("%")<cr>
-- not valid...
--set("n", "<LocalLeader>n :let @+ = expand("%")<cr>")

-- if I open this window and ctrl-w out of it I can't get back to it to kill it
set("n", "<Leader>p", "<Cmd>Lazy<CR>", { desc = "Plugins" })

