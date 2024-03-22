local M = { "lifepillar/vim-solarized8" }

function M.config()
  -- require('solarized').set()

  -- set the color scheme in vim
  vim.cmd.colorscheme("solarized8")
end

return M
