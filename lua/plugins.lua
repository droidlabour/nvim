-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)

  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'

  -- Dependency for nvim-telescope
  use 'nvim-lua/plenary.nvim'

  -- nvim-telescope
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
  }

  -- Icons for development purpose and optional dependency for nvim-telescope
  use 'kyazdani42/nvim-web-devicons'

  -- nvim theme
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'

  -- Nvim Completion Manager
  use 'ncm2/ncm2'
  use 'roxma/nvim-yarp'
  use 'ncm2/ncm2-bufword'
  use 'ncm2/ncm2-path'
  use 'phpactor/ncm2-phpactor'

end)
