return require('packer').startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- dracula for theme
  use 'Mofiqul/dracula.nvim'

  -- lsp for compl
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- completion
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- lspaga for lsp ui
  use 'glepnir/lspsaga.nvim'

  -- comment for comment code
  use 'numToStr/Comment.nvim'

  -- telescope for 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- bufferline for up buffer line
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- nvim-dap for debug
  use 'mfussenegger/nvim-dap'

  -- treesitter for highlight
  -- use 'nvim-treesitter/nvim-treesitter'

  -- nvim gps for showing scope in code 
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  -- nvim-autoparis for auto paris
  use 'windwp/nvim-autopairs'

  -- which-key
  use 'folke/which-key.nvim'

  -- git signs for git diff
  use "lewis6991/gitsigns.nvim"

  -- toggleterm for terminal
  use {"akinsho/toggleterm.nvim", tag = '*'}



  end,

  config = {
    package_root = "/Users/soulwalker/.config/nvim/pack/"
  }

})
