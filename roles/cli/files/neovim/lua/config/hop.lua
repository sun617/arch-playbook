require'hop'.setup {}

vim.api.nvim_set_keymap('n', 'gw', "<Cmd>lua require'hop'.hint_words()<CR>", {})
vim.api.nvim_set_keymap('n', 'gl', "<Cmd>lua require'hop'.hint_lines()<CR>", {})
vim.api.nvim_set_keymap('n', 'gj', "<Cmd>lua require'hop'.hint_char1()<CR>", {})
vim.api.nvim_set_keymap('n', 'gk', "<Cmd>lua require'hop'.hint_char2()<CR>", {})
