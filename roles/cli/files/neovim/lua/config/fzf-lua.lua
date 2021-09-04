require'fzf-lua'.setup {
  fzf_bin             = 'sk'
}

vim.api.nvim_set_keymap("n", "<Leader>f",        "<Cmd>lua require('fzf-lua').files()<CR>",                     { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader><Leader>", "<Cmd>lua require('fzf-lua').buffers()<CR>",                   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>g",        "<Cmd>lua require('fzf-lua').live_grep()<CR>",                 { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd",               "<Cmd>lua require('fzf-lua').lsp_definitions()<CR>",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi",               "<Cmd>lua require('fzf-lua').lsp_implementations()<CR>",       { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gr",               "<Cmd>lua require('fzf-lua').lsp_references()<CR>",            { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gs",               "<Cmd>lua require('fzf-lua').lsp_document_symbols()<CR>",      { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD",               "<Cmd>lua require('fzf-lua').lsp_workspace_diagnostics()<CR>", { noremap = true, silent = true })
