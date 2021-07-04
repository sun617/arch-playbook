require('Navigator').setup({
  auto_save = 'nil',
  disable_on_zoom = true
})

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "<A-h>", "<Cmd>lua require('Navigator').left()<CR>",     opts)
map("n", "<A-k>", "<Cmd>lua require('Navigator').up()<CR>",       opts)
map("n", "<A-l>", "<Cmd>lua require('Navigator').right()<CR>",    opts)
map("n", "<A-j>", "<Cmd>lua require('Navigator').down()<CR>",     opts)
map("n", "<A-p>", "<Cmd>lua require('Navigator').previous()<CR>", opts)
