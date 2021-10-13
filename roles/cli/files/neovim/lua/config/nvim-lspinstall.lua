local lspinstall = require('lspinstall')

-- Install missing servers
local required_servers = {
  'go',
  'ruby',
  'rust',
  'typescript',
  'vue',
}
local installed_servers = lspinstall.installed_servers()
for _, server in pairs(required_servers) do
  if not vim.tbl_contains(installed_servers, server) then
    lspinstall.install_server(server)
  end
end

local nvim_lsp = require('lspconfig')
local on_attach = require('config.nvim-lspconfig')
local capabilities = require('config.nvim-cmp')
local function setup_servers()
  lspinstall.setup()

  -- get all installed servers
  local servers = lspinstall.installed_servers()
  for _, server in pairs(servers) do
    nvim_lsp[server].setup{
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
