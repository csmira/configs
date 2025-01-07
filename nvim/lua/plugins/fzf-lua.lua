return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = function(_, opts)
    local config = require("fzf-lua.config")
    config.defaults.keymap.fzf["ctrl-c"] = "unix-line-discard"
    opts.winopts.preview.horizontal = "right:50%"
  end,
  keys = {
    {
      "<leader><leader>",
      LazyVim.pick("files"),
      desc = "Find files in working directory",
    },
    {
      "<leader>w",
      LazyVim.pick("grep_cword"),
      desc = "Search for word under cursor in working directory",
    },
    {
      "<leader>/",
      LazyVim.pick("live_grep"),
      desc = "Search for a string in working directory",
    },
    {
      "<leader>r",
      function()
        require("fzf-lua").lsp_references()
      end,
      desc = "Find all references to word under cursor",
    },
    {
      "<leader>x",
      function()
        require("fzf-lua").lsp_document_diagnostics()
      end,
      desc = "Opens diagnostics for current buffer",
    },
    {
      "<leader>s",
      function()
        require("fzf-lua").lsp_document_symbols()
      end,
      desc = "Find functions in current buffer",
    },
    {
      "<leader>;",
      "<cmd>FzfLua resume<cr>",
      desc = "Resume previous picker in normal mode",
    },
  },
}
