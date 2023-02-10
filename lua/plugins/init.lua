local plugins = {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("plugins.configs.nvim-tree")
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins.configs.treesitter")
    end,
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("plugins.configs.which-key")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.configs.lualine")
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.configs.comment")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("plugins.configs.bufferline")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugins.configs.indent-blankline")
    end,
  },
}

return plugins
