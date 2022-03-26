local M = {}

local config = {
  ensure_installed = {},
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  },
}

M.setup = function()
  require('nvim-treesitter.configs').setup(config)
end

return M
