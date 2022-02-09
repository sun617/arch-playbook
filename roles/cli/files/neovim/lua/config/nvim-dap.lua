-- https://github.com/go-delve/delve/issues/2328
-- https://github.com/golang/vscode-go/blob/master/docs/debugging.md#connecting-to-headless-delve-with-target-specified-at-server-start-up
require('dap.ext.vscode').load_launchjs()
-- mapping
vim.api.nvim_set_keymap("n", "<F8>",     	"<Cmd>lua require('dap').continue()<CR>",               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F10>",    	"<Cmd>lua require('dap').step_over()<CR>",              { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F11>",    	"<Cmd>lua require('dap').step_into()<CR>",              { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F9>",    	"<Cmd>lua require('dap').step_out()<CR>",               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>b", 	"<Cmd>lua require('dap').toggle_breakpoint()<CR>",      { noremap = true, silent = true })

local dap = require('dap')
-- go
dap.adapters.go = {
  type = 'server',
  host = '127.0.0.1',
  port = 2345
}
