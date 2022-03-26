local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

local M = {}

M.setup = function()
  local actions = require('telescope.actions')
  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ['<esc>'] = actions.close,
        },
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = 'smart_case',
      },
    },
  })
  telescope.load_extension('fzf')
end

return M
