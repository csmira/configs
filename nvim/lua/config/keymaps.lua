-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv")

vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Split window
vim.keymap.set("n", "ss", ":vsplit<Return>", { noremap = true, silent = true })
vim.keymap.set("n", "sh", ":split<Return>", { noremap = true, silent = true })
-- Delete window
vim.keymap.set("n", "sd", ":quit<Return>", { noremap = true, silent = true })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
