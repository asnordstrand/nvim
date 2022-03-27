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
end

return M
