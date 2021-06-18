-- telescope-config.lua
local M = {}
-- Falling back to find_files if git_files can't find a .git directory
M.git_or_find_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end

local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-n>"] = false,
        ["<C-p>"] = false,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  }
}

-- Lists Built-in pickers
vim.api.nvim_set_keymap("n", "<Leader>l",        "<Cmd>lua require('telescope.builtin').builtin()<CR>",              { noremap = true })
-- File Pickers
vim.api.nvim_set_keymap("n", "<Leader>f",        "<Cmd>lua require('config.telescope').git_or_find_files()<CR>",     { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>g",        "<Cmd>lua require('telescope.builtin').live_grep()<CR>",            { noremap = true })
-- Vim Pickers
vim.api.nvim_set_keymap("n", "<Leader><Leader>", "<Cmd>lua require('telescope.builtin').buffers()<CR>",              { noremap = true })
-- Neovim LSP Pickers
vim.api.nvim_set_keymap("n", "gd",               "<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>",      { noremap = true })
vim.api.nvim_set_keymap("n", "gi",               "<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>",  { noremap = true })
vim.api.nvim_set_keymap("n", "gr",               "<Cmd>lua require('telescope.builtin').lsp_references()<CR>",       { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>s",        "<Cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>ca",       "<Cmd>lua require('telescope.builtin').lsp_code_actions()<CR>",     { noremap = true })

return M
