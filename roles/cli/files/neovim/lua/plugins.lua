require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- nvim-lspconfig
  use {
    'neovim/nvim-lspconfig',
    config = [[require('config.nvim-lspconfig')]],
    requires = {
      {
        'kabouzeid/nvim-lspinstall',
        config = [[require('config.nvim-lspinstall')]]
      },
      {
        'ray-x/lsp_signature.nvim',
      },
      {
        'hrsh7th/nvim-cmp',
        config = [[require('config.nvim-cmp')]],
        requires = {
          {
            'L3MON4D3/LuaSnip',
            requires = 'rafamadriz/friendly-snippets',
            config = [[require('config.luasnip')]]
          },
          'hrsh7th/cmp-nvim-lsp',
          'saadparwaiz1/cmp_luasnip',
          'hrsh7th/cmp-buffer',
        }
      },
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
    config = [[require('config.treesitter')]]
  }

  -- nvim-autopairs
  use {
    'windwp/nvim-autopairs',
    config = [[require('config.autopairs')]]
  }

  -- surround
  use {
    'blackCauldron7/surround.nvim',
    config = function()
      require 'surround'.setup {}
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

  -- kommentary
  use {
    'b3nj5m1n/kommentary',
    config = function()
      vim.g.kommentary_create_default_mappings = false
      vim.api.nvim_set_keymap("n", "<Leader>cc", "<Plug>kommentary_line_default",   {})
      vim.api.nvim_set_keymap("n", "<Leader>c",  "<Plug>kommentary_motion_default", {})
      vim.api.nvim_set_keymap("x", "<Leader>c",  "<Plug>kommentary_visual_default<C-c>", {})

      require('kommentary.config').configure_language("default", {
        prefer_single_line_comments = true,
      })
    end
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
    'mhartington/oceanic-next',
    config = [[require('config.oceanic-next')]]
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
