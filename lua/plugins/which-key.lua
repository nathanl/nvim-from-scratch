local M = { "folke/which-key.nvim" }

function M.config()
  local wk = require("which-key")

  wk.add({
    { "<Leader>", group = "leader" },
    { "<Leader>?", "<Cmd>WhichKey<CR>", desc = "Keys" },
    { "<Leader>e", group = "explore" },
    { "<Leader>f", group = "find" },
  })
end

return M
