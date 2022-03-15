local lualine = require('lualine')

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'nightfox',
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = { 'packer', },
    always_divide_middle = true,
  },
  extensions = {
    'nvim-tree',
  },
})
