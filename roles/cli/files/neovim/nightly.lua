-- indent
vim.opt.cindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
-- let &softtabstop=&shiftwidth
vim.opt.pastetoggle = '<F10>'

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- window split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- options
vim.opt.modeline = false
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.number = true

-- packages
vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq {'neovim/nvim-lspconfig'}
paq {'hrsh7th/nvim-compe'}
paq {'hrsh7th/vim-vsnip'}
require('lsp')
