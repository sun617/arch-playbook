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
  'nix',
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
  incremental_selection = {
    enable = true,
    keymaps = {
        init_selection = '<CR>',
        scope_incremental = '<CR>',
        node_incremental = '<TAB>',
        node_decremental = '<S-TAB>',
    },
  },
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring#commentnvim
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
