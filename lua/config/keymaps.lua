-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Key mapping for go to definition
vim.api.nvim_set_keymap("n", "<A-CR>", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Keybinding to select all content in the buffer
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

vim.g.terminal_color_links = 1
--Open files with errors
-- Keybinding to open Trouble with quickfix list
vim.keymap.set("n", "<leader>bx", ":TroubleToggle quickfix<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bw", ":TroubleToggle workspace_diagnostics<CR>", { noremap = true, silent = true })

-- Keybinding to auto inspect all files and search for errors
vim.keymap.set("n", "<leader>se", ":TroubleToggle workspace_diagnostics<CR>", { noremap = true, silent = true })

-- Open file under cursor
vim.keymap.set("n", "gf", ":edit <cfile><CR>", { noremap = true, silent = true })

-- Keybinding to execute Spectre
vim.keymap.set("n", "<C-r>", ":Spectre<CR>", { noremap = true, silent = true })

-- Keybinding to open Trouble with quickfix list
vim.keymap.set("n", "<leader>xx", ":TroubleToggle quickfix<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>xw", ":TroubleToggle workspace_diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>xd", ":TroubleToggle document_diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>xl", ":TroubleToggle loclist<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>xq", ":TroubleToggle quickfix<CR>", { noremap = true, silent = true })

--Rollback and foward changes
-- Map Ctrl + Z to undo
vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true })

-- Map Ctrl + Y to redo
vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true, silent = true })

-- Navigate between buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true }) -- Next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true }) -- Previous buffer
--Copy files as normal way
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<C-x>", '"+d', { noremap = true, silent = true })
--Paste as normal way
-- Map Ctrl + V to paste from the system clipboard
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set("v", "<C-v>", '"+p', { noremap = true, silent = true })
-- Use Treesitter for folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldcolumn = "1" -- Show fold column
vim.o.foldlevel = 99 -- Set high fold level to open all folds by default
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Use ufo provider for folding
vim.o.foldmethod = "manual"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

-- Keybindings for folding
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
-- Keybinding to toggle fold for the current function
vim.keymap.set("n", "<leader>zf", "za", { noremap = true, silent = true }) -- Toggle fold
vim.keymap.set("n", "<leader>zc", "zc", { noremap = true, silent = true }) -- Close fold
vim.keymap.set("n", "<leader>zo", "zo", { noremap = true, silent = true }) -- Open fold

vim.api.nvim_set_keymap("n", "<A-3>", ":terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
