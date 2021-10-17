local lsp_installer = require("nvim-lsp-installer")
local servers = {
  'eslint',
  'jdtls',
  'gopls',
  'rust_analyzer',
  'solargraph',
  'sumneko_lua',
  'tsserver',
  -- 'volar',
  'vuels',
}

for _, name in pairs(servers) do
  local ok, server = lsp_installer.get_server(name)
  -- Check that the server is supported in nvim-lsp-installer
  if ok then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

local common_on_attach = require('config.nvim-lspconfig')
local capabilities = require('config.nvim-cmp')
lsp_installer.on_server_ready(function (server)
  local opts = {
    on_attach = common_on_attach,
    capabilities = capabilities
  }

  -- eslint
  if server.name == "eslint" then
    opts.on_attach = function (client, bufnr)
      -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
      -- the resolved capabilities of the eslint server ourselves!
      client.resolved_capabilities.document_formatting = true
      common_on_attach(client, bufnr)
    end
    opts.settings = {
      format = { enable = true }, -- this will enable formatting
    }
  end

  -- tsserver
  if server.name == 'tsserver' then
    opts.on_attach = function (client, bufnr)
      common_on_attach(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
    end
  end

  server:setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)
