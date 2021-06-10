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

  -- vim-sneak
  use 'justinmk/vim-sneak'

  -- kommentary
  use 'b3nj5m1n/kommentary'

  -- vimagit
  use 'jreybert/vimagit'
  -- gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
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
