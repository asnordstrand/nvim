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
}

return plugins
