return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    "nvim-telescope/telescope-file-browser.nvim",
  },
  keys = {
    {
      "<leader><leader>",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files()
      end,
      desc = "Find files in working directory",
    },
    {
      "<leader>w",
      function()
        local builtin = require("telescope.builtin")
        builtin.grep_string({ initial_mode = "normal" })
      end,
      desc = "Search for word under cursor in working directory",
    },
    {
      "<leader>/",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
      desc = "Search for a string in working directory",
    },
    {
      "<leader>r",
      function()
        local builtin = require("telescope.builtin")
        builtin.lsp_references()
      end,
      desc = "Find all references to word under cursor",
    },
    {
      "<leader>x",
      function()
        local builtin = require("telescope.builtin")
        builtin.diagnostics({
          initial_mode = "normal",
          bufnr = 0,
        })
      end,
      desc = "Opens diagnostics for current buffer",
    },
    {
      "<leader>s",
      function()
        local builtin = require("telescope.builtin")
        builtin.lsp_document_symbols({
          symbols = "function",
        })
      end,
      desc = "Find functions in current buffer",
    },
    {
      "<leader>;",
      function()
        local builtin = require("telescope.builtin")
        builtin.resume({ initial_mode = "normal" })
      end,
      desc = "Resume previous picker in normal mode",
    },
    {
      "<leader>e",
      function()
        local file_browser = require("telescope").extensions.file_browser.file_browser
        file_browser({ hidden = true, path = "%:p:h" })
      end,
      desc = "Open file browser using path of current buffer",
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local file_browser_actions = require("telescope").extensions.file_browser.actions

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      wrap_results = true,
      mappings = {
        n = {},
      },
    })
    opts.extensions = {
      file_browser = {
        initial_mode = "normal",
        theme = "dropdown",
        layout_config = { height = 0.6 },
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        mappings = {
          ["n"] = {
            ["e"] = file_browser_actions.goto_parent_dir,
            ["h"] = file_browser_actions.goto_cwd,
            ["<C-u>"] = function(prompt_bufnr)
              for _ = 1, 5 do
                actions.move_selection_previous(prompt_bufnr)
              end
            end,
            ["<C-d>"] = function(prompt_bufnr)
              for _ = 1, 5 do
                actions.move_selection_next(prompt_bufnr)
              end
            end,
          },
        },
      },
    }
    telescope.setup(opts)
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("file_browser")
  end,
}
