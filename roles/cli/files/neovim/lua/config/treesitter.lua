local parsers = {
  'bash',
  'comment',
  'css',
  'dockerfile',
  'fish',
  'go',
  'gomod',
  'graphql',
  'html',
  'java',
  'javascript',
  'json',
  'jsonc',
  'lua',
  'python',
  'regex',
  'ruby',
  'rust',
  'scss',
  'toml',
  'typescript',
  'vue',
  'yaml',
};

require'nvim-treesitter.configs'.setup {
  ensure_installed = parsers,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring#commentnvim
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
