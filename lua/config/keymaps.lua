-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { silent = true, noremap = true }
local keymap = vim.keymap

-- enter normal mode
keymap.set("i", "jj", "<ESC>", opts)
keymap.set("i", "JJ", "<ESC>", opts)
-- goto single char ahead in insertmode
keymap.set("i", "kk", "<C-o>a", opts)
-- goto end of line in insertmode
keymap.set("i", "KK", "<C-o>A", opts)

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- jumplist
keymap.set("n", "<C-m>", "<C-o>", opts)

-- split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- goto window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- close buffer
keymap.set("n", "<C-w>", LazyVim.ui.bufremove, opts)

-- Diagnostics
-- see line diagnostic, since K used for hover, J makes sense
keymap.set("n", "J", vim.diagnostic.open_float, opts)
-- goto diagnostic
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
