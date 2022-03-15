local indent_blankline = require('indent_blankline')

indent_blankline.setup({
  use_treesitter = true,
  max_indent_increase = 1,
  show_trailing_blankline_indent = false,
  filetype_exclude = {
    'lspinfo',
    'NvimTree',
    'packer',
    'checkhealth',
    'help',
    '',
  },
})
