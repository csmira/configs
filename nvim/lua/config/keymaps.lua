-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.g.mapleader = " "

vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv")

vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "n", "nzzzv")

-- Remapping some default keybinds from lazyvim using Alt instead of Ctrl
-- Fixes conflicting keybinds with macos
------------------------------------------------------------------------------

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<A-Up>", "<cmd>resize +4<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -4<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -4<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +4<cr>", { desc = "Increase window width" })

-- save file
vim.keymap.set({ "i", "v", "n", "s" }, "<A-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
