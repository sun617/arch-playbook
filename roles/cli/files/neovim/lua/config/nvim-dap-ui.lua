require("dapui").setup()

vim.api.nvim_set_keymap("n", "<F12>", 		"<Cmd>lua require('dapui').toggle()<CR>", 					{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dv", 		"<Cmd>lua require('dapui').eval()<CR>", 					{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dx", 		"<Cmd>lua require('dapui').float_element('scopes', { enter = true } )<CR>", 	{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dy", 		"<Cmd>lua require('dapui').float_element('watches', { enter = true } )<CR>", 	{ noremap = true, silent = true })
