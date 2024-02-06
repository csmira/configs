-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("i", "<C-[", "Esc")
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

-- Keymaps for smart-splits plugin
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)

vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
