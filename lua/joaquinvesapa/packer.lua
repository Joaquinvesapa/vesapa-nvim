-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'Mofiqul/dracula.nvim'
    use 'rose-pine/neovim'
  use ("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use ("theprimeagen/harpoon")
  use ({
      "mbbill/undotree"
  })
  use ({
      "mason-org/mason.nvim"
  })
  use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
  use ('github/copilot.vim')
  use ('christoomey/vim-tmux-navigator')
  -- use {
  -- 'nvim-tree/nvim-tree.lua',
  -- requires = {
  --   'nvim-tree/nvim-web-devicons', -- optional
  --       }
  -- }
  use ({"folke/flash.nvim"})

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })
  use ({
 'goolord/alpha-nvim',
  requires = { 'nvim-tree/nvim-web-devicons' },
  })
  use ({"sphamba/smear-cursor.nvim", 
  opts = {  stiffness = 0.5,  trailing_stiffness = 0.5,  matrix_pixel_threshold = 0.5,  },})
end)

