return {
  get_project_root = function()
    return vim.fs.root(0, ".git") or vim.env.PWD
  end,
}
