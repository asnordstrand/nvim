local ok, autopairs = pcall(require, 'nvim-autopairs')
if not ok then
  return
end

local M = {}

M.setup = function()
  autopairs.setup({
    enable_check_bracket_line = false,
    check_ts = true,
  })

  local cmp = require('cmp')
  local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({}))
end

return M
