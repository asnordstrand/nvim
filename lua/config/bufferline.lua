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
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count)
      return ''..count
    end,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'Directory',
      },
      {
        filetype = 'packer',
        text = 'Packer',
        highlight = 'Directory',
      },
    },
    show_buffer_icons = true,
    show_buffer_close_icons = false,
  },
}

M.setup = function()
  bufferline.setup(config)
end

return M
