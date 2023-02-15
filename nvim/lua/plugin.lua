return require('packer').startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- monokai for theme
  -- use 'tanvirtin/monokai.nvim'
  -- nord for theme
  -- use 'shaunsingh/nord.nvim'
  -- tokyonight for theme
  use 'folke/tokyonight.nvim'

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
  -- use {'glepnir/lspsaga.nvim', branch = 'version_2.2'}
  use {'glepnir/lspsaga.nvim', branch = 'main'}

  -- comment for comment code
  use 'numToStr/Comment.nvim'

  -- telescope for fuzzy search
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'nvim-telescope/telescope-live-grep-raw.nvim'

  -- bufferline for up buffer line
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- nvim-dap for debug
  use 'mfussenegger/nvim-dap'

  -- treesitter for highlight
  use 'p00f/nvim-ts-rainbow'
  use 'nvim-treesitter/nvim-treesitter'

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


  -- nvim tree for file explore
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'
  }

  -- symbols-outline for outline
  use 'simrat39/symbols-outline.nvim'

  -- cmake
  use 'Shatur/neovim-cmake'

  -- code runner
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- todo comment for highlight todo/fix
  use { 'folke/todo-comments.nvim', requires = "nvim-lua/plenary.nvim" }

  -- neogen for comment generation
  use { 'danymat/neogen', requires = "nvim-treesitter/nvim-treesitter" }

  -- lsp_signature
  use 'ray-x/lsp_signature.nvim'


  -- code action menu for code action
  use ({'weilbith/nvim-code-action-menu', cmd="CodeActionMenu"})

  -- windline for status line
  use 'windwp/windline.nvim'

  -- carbon-now for snippets
  use 'ellisonleao/carbon-now.nvim'

  -- session manager 
  use 'Shatur/neovim-session-manager'

  -- code format
  use("mhartington/formatter.nvim")

  end,

  config = {
    package_root = "/Users/soulwalker/.config/nvim/pack/"
  }

})
