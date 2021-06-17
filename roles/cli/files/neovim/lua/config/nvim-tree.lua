vim.g.nvim_tree_side = 'right'
vim.g.nvim_tree_width = 70

vim.api.nvim_set_keymap("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>",   { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<Cmd>NvimTreeFindFile<CR>", { noremap = true })
