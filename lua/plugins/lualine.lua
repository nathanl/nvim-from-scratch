return {
  "nvim-lualine/lualine.nvim",

  config = {
    options = {
      icons_enabled = false,
      component_separators = "│",
      section_separators = "",

      -- TODO try to switch filename and branch
      -- sections = {
      --   lualine_a = {'mode'},
      --   lualine_b = {'branch', 'diff', 'diagnostics'},
      --   lualine_c = {'filename'},
      --   lualine_x = {'encoding', 'fileformat', 'filetype'},
      --   lualine_y = {'progress'},
      --   lualine_z = {'location'}
      -- },
    },
  },
}
