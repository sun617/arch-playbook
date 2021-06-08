-- File Pickers
vim.api.nvim_set_keymap("n", "<Leader>f",  "<Cmd>lua require('telescope.builtin').file_browser()<CR>",        { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>g",  "<Cmd>lua require('telescope.builtin').git_files()<CR>",           { noremap = true })

-- Vim Pickers
vim.api.nvim_set_keymap("n", "<Leader> ",  "<Cmd>lua require('telescope.builtin').buffers()<CR>",             { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>vc", "<Cmd>lua require('telescope.builtin').commands()<CR>",            { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>vm", "<Cmd>lua require('telescope.builtin').keymaps()<CR>",             { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>vq", "<Cmd>lua require('telescope.builtin').quickfix()<CR>",            { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>vl", "<Cmd>lua require('telescope.builtin').loclist()<CR>",             { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>vh", "<Cmd>lua require('telescope.builtin').help_tags()<CR>",           { noremap = true })

-- Neovim LSP Pickers
vim.api.nvim_set_keymap("n", "gd",         "<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>",     { noremap = true })
vim.api.nvim_set_keymap("n", "gi",         "<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gr",         "<Cmd>lua require('telescope.builtin').lsp_references()<CR>",      { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>ca", "<Cmd>lua require('telescope.builtin').lsp_code_actions()<CR>",    { noremap = true })
