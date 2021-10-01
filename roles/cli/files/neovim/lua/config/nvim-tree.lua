require'nvim-tree'.setup {
  view = {
    -- width of the window, can be either a number (columns) or a string in `%`
    width = 70,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'right',
    -- if true the tree will resize itself after opening a file
    auto_resize = false,
    mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      -- list of mappings to set on the tree manually
      list = {}
    }
  }
}

vim.api.nvim_set_keymap("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>",   { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<Cmd>NvimTreeFindFile<CR>", { noremap = true })
