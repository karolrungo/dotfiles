local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- colorschemes
  use 'navarasu/onedark.nvim'
  use 'Mofiqul/vscode.nvim'
  -- nerd tree
  use 'nvim-tree/nvim-tree.lua'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use("nvim-tree/nvim-web-devicons")
  --Syntax highlighting
  use {
      'nvim-treesitter/nvim-treesitter',
      requires = 'nvim-tree/nvim-web-devicons',
      run = ':TSUpdate'
  }
  use("nathom/filetype.nvim")
  use {'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'}
  -- file explorer
  use ({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  --LSP plugins
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use ({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  })
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"
  -- to be sorted
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround'
  use 'numToStr/Comment.nvim'
  use 'lewis6991/gitsigns.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
