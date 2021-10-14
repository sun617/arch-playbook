local null_ls = require('null-ls')
local helpers = require('null-ls.helpers')
null_ls.config({
  sources = {
    -- eslint
    null_ls.builtins.diagnostics.eslint.with({
      condition = function(utils)
        return utils.root_has_file('node_modules/.bin/eslint')
      end,
      command = 'node_modules/.bin/eslint'
    }),
    -- prettier
    null_ls.builtins.formatting.prettier.with({
      condition = function(utils)
        return utils.root_has_file('node_modules/.bin/prettier')
      end,
      command = 'node_modules/.bin/prettier'
    }),
  }
})

local on_attach = require('config.nvim-lspconfig')
require('lspconfig')['null-ls'].setup{
  on_attach = on_attach
}
