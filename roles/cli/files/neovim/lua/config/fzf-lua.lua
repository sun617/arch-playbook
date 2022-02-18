require'fzf-lua'.setup {
  fzf_bin             = 'sk'
}

vim.api.nvim_set_keymap("n", "<Leader>f",        "<Cmd>lua require('fzf-lua').files()<CR>",                                               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader><Leader>", "<Cmd>lua require('fzf-lua').buffers()<CR>",                                             { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>g",        "<Cmd>lua require('fzf-lua').live_grep()<CR>",                                           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gw",       "<Cmd>lua require('fzf-lua').grep_cword()<CR>",                                          { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ca",       "<Cmd>lua require('fzf-lua').lsp_code_actions()<CR>",                                    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD",               "<Cmd>lua require('fzf-lua').lsp_declarations({ jump_to_single_result = true })<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd",               "<Cmd>lua require('fzf-lua').lsp_definitions({ jump_to_single_result = true })<CR>",     { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ge",               "<Cmd>lua require('fzf-lua').lsp_workspace_diagnostics()<CR>",                           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi",               "<Cmd>lua require('fzf-lua').lsp_implementations({ jump_to_single_result = true })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gr",               "<Cmd>lua require('fzf-lua').lsp_references({ jump_to_single_result = true })<CR>",      { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gs",               "<Cmd>lua require('fzf-lua').lsp_document_symbols()<CR>",                                { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gt",               "<Cmd>lua require('fzf-lua').lsp_typedefs({ jump_to_single_result = true })<CR>",        { noremap = true, silent = true })
