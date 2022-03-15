local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

local M = {}

local config = {
  options = {
    mode = 'buffers',
    numbers = 'none',
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 20,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'PanelHeading',
      },
      {
        filetype = 'packer',
        text = 'Packer',
        highlight = 'PanelHeading',
      },
    },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    show_tab_indicators = true,
    separator_style = 'thin',
  },
}

M.setup = function()
  bufferline.setup(config)
end

return M
