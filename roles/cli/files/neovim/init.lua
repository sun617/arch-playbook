-- encoding
vim.opt.fileencodings = 'utf-8,utf-16le,cp932,iso-2022-jp,euc-jp,latin1'
-- indent
vim.opt.cindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.g.softtabstop = vim.g.shiftwidth
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

-- map
vim.g.mapleader = " "

-- available keys
-- ctrl-m, ctrl-p, ctrl-q, ctrl-s
-- ca cd cm co cp cq cr cu cv cx cy cz
-- cA cD    cO cP cQ cR cU cV cX cY cZ
-- da dc dm dq dr du dv dx dy dz
-- dA dC    dQ
-- va vc vd vm vo vp vq vr vs vu vv vx vy vz
-- vA
-- ya yc yd ym yo yp yq yr ys yu yv yx yz
-- yA
-- gb gc gl
-- gB
-- zp zq zu zy

-- Common
vim.api.nvim_set_keymap("n", "j",         "gj",                                               { noremap = true })
vim.api.nvim_set_keymap("n", "k",         "gk",                                               { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>w", "<Cmd>write<CR>",                                   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>W", "<Cmd>write !sudo tee > /dev/null %<CR>",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>/", "<Cmd>nohlsearch<CR>",                              { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>d", "<Cmd>bdelete<CR>",                                 { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>D", "<Cmd>call delete(expand('%')) <Bar> :bdelete<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>q", "<Cmd>qall<CR>",                                    { noremap = true, silent = true })
-- QuickFix
vim.api.nvim_set_keymap("n", "[q",        "<Cmd>cprevious<CR>",                               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]q",        "<Cmd>cnext<CR>",                                   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "\\q",        "<Cmd>cclose<CR>",                                 { noremap = true, silent = true })
-- LocationList
vim.api.nvim_set_keymap("n", "[l",        "<Cmd>lprevious<CR>",                               { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]l",        "<Cmd>lnext<CR>",                                   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "\\l",        "<Cmd>lclose<CR>",                                 { noremap = true, silent = true })

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
