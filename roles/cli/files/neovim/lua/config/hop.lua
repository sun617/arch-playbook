require'hop'.setup {}

vim.api.nvim_set_keymap('n', ';w', "<Cmd>lua require'hop'.hint_words()<CR>", {})
vim.api.nvim_set_keymap('n', ';l', "<Cmd>lua require'hop'.hint_lines()<CR>", {})
vim.api.nvim_set_keymap('n', ';f', "<Cmd>lua require'hop'.hint_char1()<CR>", {})
