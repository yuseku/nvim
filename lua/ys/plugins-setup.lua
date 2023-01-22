local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
  -- packer can manage itself
  use('wbthomason/packer.nvim')

  -- lua functions that many plugins use
  use('nvim-lua/plenary.nvim')

  -- icons
  use('kyazdani42/nvim-web-devicons')

  -- colorscheme
  use("xiyaowong/nvim-transparent")
  use('gruvbox-community/gruvbox')
  -- use("Mofiqul/dracula.nvim")
  -- use("catppuccin/nvim")
  -- use("folke/tokyonight.nvim")

  -- essential plugins
  use('tpope/vim-surround')
  -- use('szw/vim-maximizer') -- maximizes and restores current window

  -- commenting with gc
  use('numToStr/Comment.nvim')

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- statusline
  use('nvim-lualine/lualine.nvim')

  -- fuzzy finding
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- git
  use("lewis6991/gitsigns.nvim")

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  -- managing buffers
  use("akinsho/bufferline.nvim")
  use("moll/vim-bbye")

  -- treesitter configuration
  use("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...

  if packer_bootstrap then
    require("packer").sync()
  end
end)
