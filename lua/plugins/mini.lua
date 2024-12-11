-- Actually a bunch of plugins smuggled together
-- https://github.com/echasnovski/mini.nvim?tab=readme-ov-file#modules
local M = { "echasnovski/mini.nvim" }

function M.align()
  require("mini.align").setup()
end

function M.comment()
  require("mini.comment").setup({})
end

-- don't automatically insert end quotes or whatever
-- function M.pairs()
--   require("mini.pairs").setup({})
-- end

function M.config()
  M.align()
  M.comment()
  -- M.pairs()
end

return M
