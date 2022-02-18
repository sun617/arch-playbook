-- encoding
vim.opt.fileencodings = 'utf-8,cp932,utf-16le,iso-2022-jp,euc-jp,latin1'
-- indent
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.g.softtabstop = vim.g.shiftwidth
vim.opt.expandtab = true
-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- window split
vim.opt.splitbelow = true
vim.opt.splitright = true
-- options
vim.opt.modeline = false
vim.opt.number = true
vim.opt.signcolumn = 'number'
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.wrap = false

-- map
vim.g.mapleader = " "

-- Common
vim.api.nvim_set_keymap("n", "j",         "gj",                                               { noremap = true })
vim.api.nvim_set_keymap("n", "k",         "gk",                                               { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>w", "<Cmd>update<CR>",                                  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>W", "<Cmd>write !sudo tee > /dev/null %<CR>",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>d", "<Cmd>bdelete<CR>",                                 { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>D", "<Cmd>call delete(expand('%')) <Bar> :bdelete<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>q", "<Cmd>qall<CR>",                                    { noremap = true, silent = true })
-- QuickFix
vim.api.nvim_set_keymap("n", "[q",        "<Cmd>cprevious<CR>",                               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]q",        "<Cmd>cnext<CR>",                                   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "\\q",       "<Cmd>cclose<CR>",                                  { noremap = true, silent = true })
-- LocationList
vim.api.nvim_set_keymap("n", "[l",        "<Cmd>lprevious<CR>",                               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]l",        "<Cmd>lnext<CR>",                                   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "\\l",       "<Cmd>lclose<CR>",                                  { noremap = true, silent = true })

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
