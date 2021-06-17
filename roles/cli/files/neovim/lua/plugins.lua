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
        config = [[require('config.nvim-install')]]
      },
      {
        'ray-x/lsp_signature.nvim',
        config = function()
          require('lsp_signature').on_attach()
        end
      },
      {
        'glepnir/lspsaga.nvim',
        config = [[require('config.lspsaga')]]
      },
      {
        'hrsh7th/nvim-compe',
        config = [[require('config.nvim-compe')]]
      },
      {
        'hrsh7th/vim-vsnip',
        requires = 'rafamadriz/friendly-snippets',
        config = [[require('config.vim-vsnip')]]
      },
    }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    config = [[require('config.telescope')]],
    requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
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

  -- hop
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = [[require('config.hop')]]
  }

  -- indent-blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua',
    config = function()
      vim.g.indent_blankline_show_first_indent_level = false
      vim.g.indent_blankline_show_trailing_blankline_indent = false
    end
  }

  -- kommentary
  use {
    'b3nj5m1n/kommentary',
    config = function()
      -- https://github.com/b3nj5m1n/kommentary/issues/20
      vim.g.kommentary_create_default_mappings = false
      vim.api.nvim_set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
      vim.api.nvim_set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
      vim.api.nvim_set_keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})

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
  -- vimagit
  use 'jreybert/vimagit'
  -- neogit
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      vim.api.nvim_set_keymap("n", "<Leader>m", "<Cmd>Neogit<CR>", { noremap = true })
    end
  }

  -- oceanic-next
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

  -- Navigator
  use {
    'numToStr/Navigator.nvim',
    config = [[require('config.navigator')]]
  }
end)
