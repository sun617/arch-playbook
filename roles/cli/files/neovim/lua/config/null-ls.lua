local null_ls = require('null-ls')
local helpers = require('null-ls.helpers')
null_ls.config({
  sources = {
    -- eslint
    helpers.conditional(function(utils)
      local project_local_eslint = "node_modules/.bin/eslint"

      return null_ls.builtins.diagnostics.eslint.with({
        command = utils.root_has_file(project_local_eslint) and project_local_eslint or 'eslint',
      })
    end),
    -- prettier
    helpers.conditional(function(utils)
      local project_local_prettier = "node_modules/.bin/prettier"

      return null_ls.builtins.formatting.prettier.with({
        command = utils.root_has_file(project_local_prettier) and project_local_prettier or 'prettier',
      })
    end)
  }
})

local on_attach = require('config.nvim-lspconfig')
require('lspconfig')['null-ls'].setup{
  on_attach = on_attach
}
