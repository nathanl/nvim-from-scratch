return {
  "ggandor/leap.nvim",

  dependencies = {
    { "ggandor/flit.nvim", config = true, enabled = false},
  },

  config = function()
    require('leap').add_default_mappings()
  end,
}
