require'hop'.setup {}

vim.api.nvim_set_keymap('n', 'gw', "<Cmd>lua require'hop'.hint_words()<CR>", {})
vim.api.nvim_set_keymap('n', 'gl', "<Cmd>lua require'hop'.hint_lines()<CR>", {})
vim.api.nvim_set_keymap('n', 'gC', "<Cmd>lua require'hop'.hint_char1()<CR>", {})
vim.api.nvim_set_keymap('n', 'gB', "<Cmd>lua require'hop'.hint_char2()<CR>", {})
