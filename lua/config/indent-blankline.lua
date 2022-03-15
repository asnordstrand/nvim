local ok, indent_blankline = pcall(require, 'indent_blankline')
if not ok then
  return
end

local M = {}

local config = {
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
}

M.setup = function()
  indent_blankline.setup(config)
end

return M
