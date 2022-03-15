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

local packer = require('packer')

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
  { 'EdenEast/nightfox.nvim', },
  {
    'neovim/nvim-lspconfig',
    requires = { 'williamboman/nvim-lsp-installer', },
    config = function()
      require('config.lsp')
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require('config.cmp')
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
      require('config.treesitter')
    end,
  },
  {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', },
    config = function()
      require('config.nvim-tree')
    end,
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('config.bufferline')
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', },
    config = function()
      require('config.lualine')
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('config.indent-blankline')
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
