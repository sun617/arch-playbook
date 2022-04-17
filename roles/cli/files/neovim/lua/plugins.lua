require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- nvim-lspconfig
  use {
    'neovim/nvim-lspconfig',
    config = [[require('config.nvim-lspconfig')]],
    requires = {
      {
        'williamboman/nvim-lsp-installer',
        config = [[require('config.nvim-lsp-installer')]]
      },
      -- {
      --   'jose-elias-alvarez/null-ls.nvim',
      --   config = [[require('config.null-ls')]],
      --   requires = { 'nvim-lua/plenary.nvim' }
      -- },
      {
        'hrsh7th/nvim-cmp',
        config = [[require('config.nvim-cmp')]],
        requires = {
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-nvim-lsp-signature-help',
          'hrsh7th/cmp-buffer',
          {
            'L3MON4D3/LuaSnip',
            requires = {
              'saadparwaiz1/cmp_luasnip',
              'rafamadriz/friendly-snippets'
            },
            config = [[require('config.luasnip')]]
          },
        }
      },
    }
  }

  -- nvim-dap
  use {
    'rcarriga/nvim-dap-ui',
    config = [[require('config.nvim-dap-ui')]],
    requires = {
      {
        'mfussenegger/nvim-dap',
        config = [[require('config.nvim-dap')]]
      }
    }
  }

  -- fzf-lua
  use {
    'ibhagwan/fzf-lua',
    config = [[require('config.fzf-lua')]],
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = [[require('config.nvim-tree')]],
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('config.treesitter')]],
    requires = {
      'nvim-treesitter/nvim-treesitter-textobjects'
    }
  }

  -- nvim-autopairs
  use {
    'windwp/nvim-autopairs',
    config = [[require('config.autopairs')]]
  }

  -- surround
use {
  "ur4ltz/surround.nvim",
  config = function()
    require"surround".setup {mappings_style = "sandwich"}
  end
}

  -- hop
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = [[require('config.hop')]]
  }

  -- indent-blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      vim.g.indent_blankline_show_first_indent_level = false
      vim.g.indent_blankline_show_trailing_blankline_indent = false
    end
  }

  -- Comment.nvim
  use {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    },
    config = [[require('config.comment')]]
  }

  -- gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = [[require('config.gitsigns')]]
  }
  -- neogit
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      vim.api.nvim_set_keymap("n", "<Leader>m", "<Cmd>Neogit<CR>", { noremap = true })
    end
  }

  -- theme
  use {
    'EdenEast/nightfox.nvim',
    config = function()
      vim.cmd("colorscheme nightfox")
    end
  }

  -- feline
  use {
    'famiu/feline.nvim',
    config = [[require('feline').setup()]],
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require'colorizer'.setup()
    end
  }

  -- glow
  use {
    'npxbr/glow.nvim',
    run = ':GlowInstall',
    config = function()
      vim.api.nvim_set_keymap("n", "<Leader>p", "<Cmd>Glow<CR>", {})
    end
  }

  -- Navigator
  use {
    'numToStr/Navigator.nvim',
    config = [[require('config.navigator')]]
  }
end)
