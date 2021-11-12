require'hop'.setup {}

vim.api.nvim_set_keymap('n', '<leader>/w', "<Cmd>lua require'hop'.hint_words()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>/l', "<Cmd>lua require'hop'.hint_lines()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>/c', "<Cmd>lua require'hop'.hint_char1()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>/b', "<Cmd>lua require'hop'.hint_char2()<CR>", {})
