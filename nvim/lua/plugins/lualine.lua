return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  opts = {
    options = {
      refresh = {
        tabline = math.huge,
        winbar = math.huge,
      },
    },
    sections = {
      lualine_a = { "branch" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    always_show_tabline = false,
  },
}
