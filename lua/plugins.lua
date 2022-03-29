local ok, packer = pcall(require, 'packer')

if not ok then
  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    _G.packer_bootstrap = vim.fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
    })
  end
end

-- Automatically run :PackerCompile when plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local plugins = {
  -- Packer can manage itself
  { 'wbthomason/packer.nvim', },
  -- Color scheme
  { 'rebelot/kanagawa.nvim', },
  {
    'neovim/nvim-lspconfig',
    requires = { 'williamboman/nvim-lsp-installer', },
    config = function()
      require('config.lsp').setup()
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require('config.cmp').setup()
    end,
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('config.autopairs').setup()
    end,
  },
  {
    'L3MON4D3/LuaSnip',
    requires = { 'saadparwaiz1/cmp_luasnip', },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('config.treesitter').setup()
    end,
  },
  {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons',},
    config = function()
      require('config.nvim-tree').setup()
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', },
    },
    config = function()
      require('config.telescope').setup()
    end,
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('config.bufferline').setup()
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', },
    config = function()
      require('config.lualine').setup()
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('config.indent-blankline').setup()
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('config.comment').setup()
    end
  },
  {
    'folke/which-key.nvim',
    config = function()
      require('config.which-key').setup()
    end,
  },
}

return packer.startup(function(use)
  for _, plugin in ipairs(plugins) do
    use(plugin)
  end

  if _G.packer_bootstrap then
    packer.sync()
  end
end)
