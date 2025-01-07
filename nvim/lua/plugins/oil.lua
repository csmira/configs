return {
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        keymaps = {
          ["e"] = { "actions.parent", mode = "n" },
          ["h"] = { "actions.open_cwd", mode = "n" },
          ["<C-[>"] = { "actions.close", mode = "n" },
          ["<C-s>"] = {
            function()
              require("oil").save()
            end,
            mode = "n",
          },
        },
      })
    end,
    keys = {
      {
        "<leader>e",
        function()
          require("oil").toggle_float()
        end,
        { desc = "Open Oil file manager" },
      },
    },
  },
}
