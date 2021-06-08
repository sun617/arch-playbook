require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- nvim-lspconfig
  use {
    'neovim/nvim-lspconfig',
    config = [[require('config.nvim-lspconfig')]],
    requires = {
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

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('config.treesitter')]]
  }

  -- oceanic-next
  use {
    'mhartington/oceanic-next',
    config = [[require('config.oceanic-next')]]
  }

  -- lualine
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = [[require('config.lualine')]]
  }

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

  -- vim-sneak
  use 'justinmk/vim-sneak'
end)
