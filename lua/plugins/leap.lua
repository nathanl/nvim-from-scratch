return {
  "ggandor/leap.nvim",

  dependencies = {
    { "ggandor/flit.nvim", config = true, enabled = false},
  },

  config = function()
    local leap = require('leap')

    -- Set up mappings explicitly instead of using add_default_mappings()
    -- n = normal mode, x = visual, o = operator pending mode
    -- Operator pending mode is like when you press `d` and haven't yet told it
    -- where to delete to
    vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap-forward-to)')
    vim.keymap.set({'n', 'x', 'o'}, 'S', '<Plug>(leap-backward-to)')
    -- These conflict with visual mode deletion
    -- vim.keymap.set({'x', 'o'}, 'x', '<Plug>(leap-forward-till)')
    -- vim.keymap.set({'x', 'o'}, 'X', '<Plug>(leap-backward-till)')
  end,
}
