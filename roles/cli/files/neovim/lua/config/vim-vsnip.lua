-- Expand
vim.api.nvim_set_keymap("i", "<C-j>",   "vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'",   {expr = true})
vim.api.nvim_set_keymap("s", "<C-j>",   "vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'",   {expr = true})

-- Expand or jump
vim.api.nvim_set_keymap("i", "<C-l>",   "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'",   {expr = true})
vim.api.nvim_set_keymap("s", "<C-l>",   "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'",   {expr = true})

-- Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- See https://github.com/hrsh7th/vim-vsnip/pull/50
-- vim.api.nvim_set_keymap("n", "s", "<Plug>(vsnip-select-text)", {})
-- vim.api.nvim_set_keymap("x", "s", "<Plug>(vsnip-select-text)", {})
-- vim.api.nvim_set_keymap("n", "S", "<Plug>(vsnip-cut-text)",    {})
-- vim.api.nvim_set_keymap("x", "S", "<Plug>(vsnip-cut-text)",    {})
