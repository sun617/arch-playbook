require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    requires = {
      {'hrsh7th/nvim-compe'},
      {'hrsh7th/vim-vsnip'}
    },
    config = [[require('config.lsp')]]
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
end)
