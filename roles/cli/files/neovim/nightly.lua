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
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.wrap = false

-- plugins
-- bootstraping
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  require('plugins')
  vim.cmd('PackerSync')
end
require('plugins')
-- automatically run :PackerCompile whenever plugins.lua is updated
vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])
