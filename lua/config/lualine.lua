local ok, lualine = pcall(require, 'lualine')
if not ok then
  return
end

local M = {}

local config = {
  options = {
    icons_enabled = true,
    theme = 'kanagawa',
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = { 'packer', },
    always_divide_middle = true,
  },
  extensions = {
    'nvim-tree',
  },
}

M.setup = function()
  lualine.setup(config)
end

return M
