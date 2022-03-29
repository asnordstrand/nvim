local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

local M = {}

M.setup = function()
  bufferline.setup({
    options = {
      diagnostics = 'nvim_lsp',
      diagnostics_indicator = function(count)
        return ''..count
      end,
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'Explorer',
          highlight = 'PanelHeading',
        },
        {
          filetype = 'packer',
          text = 'Packer',
          highlight = 'PanelHeading',
        },
      },
    },
  })
end

return M
