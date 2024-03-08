------------------------------------------------------------
-- Commands/Autocommands
------------------------------------------------------------

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "TextYankPost" }, {
  group = augroup("highlight-yank", {}),
  pattern = "*",
  callback = function() vim.highlight.on_yank() end
})


-- TODO
--" When editing a file, always jump to the last known cursor position.
--" Don't do it when the position is invalid or when inside an event handler
--" (happens when dropping a file on gvim).
--autocmd BufReadPost *
--  \ if line("'\"") > 0 && line("'\"") <= line("$") |
--  \   exe "normal! g`\"" |
--  \ endif
