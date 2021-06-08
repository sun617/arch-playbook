require('lspsaga').init_lsp_saga()
local opts = { noremap=true, silent=true }
-- lsp provider to find the cursor word definition and reference
vim.api.nvim_set_keymap("n", "gh",         "<Cmd>lua require'lspsaga.provider'.lsp_finder()<CR>",                 opts)
-- code action
vim.api.nvim_set_keymap("n", "<Leader>ca", "<Cmd>lua require('lspsaga.codeaction').code_action()<CR>",            opts)
vim.api.nvim_set_keymap("v", "<Leader>ca", ":<C-u>lua require('lspsaga.codeaction').range_code_action()<CR>",     opts)
-- show hover doc
vim.api.nvim_set_keymap("n", "K",          "<Cmd>lua require('lspsaga.hover').render_hover_doc()<CR>",            opts)
-- show signature help
vim.api.nvim_set_keymap("n", "<C-k>",      "<Cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>",      opts)
-- rename
vim.api.nvim_set_keymap("n", "<Leader>rn", "<Cmd>lua require('lspsaga.rename').rename()<CR>",                     opts)
-- preview definition
vim.api.nvim_set_keymap("n", "gd",         "<Cmd>lua require'lspsaga.provider'.preview_definition()<CR>",         opts)
-- show line diagnostic
vim.api.nvim_set_keymap("n", "<Leader>d",  "<Cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>",    opts)
-- jump diagnostic
vim.api.nvim_set_keymap("n", "[d",         "<Cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]d",         "<Cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", opts)


-- scroll down hover doc or scroll in definition preview
vim.api.nvim_set_keymap("n", "<C-f>",      "<Cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>",    opts)
-- scroll up hover doc
vim.api.nvim_set_keymap("n", "<C-b>",      "<Cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>",   opts)
