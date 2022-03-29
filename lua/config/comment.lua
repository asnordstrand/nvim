local ok, comment = pcall(require, 'Comment')
if not ok then
  return
end

local M = {}

local config = {
  padding = true,
  sticky = true,
  ignore = '^$',
  toggler = {
    line = 'gcc',
    block = 'gbc',
  },
  opleader = {
    line = 'gc',
    block = 'gb',
  },
  extra = {
    above = 'gcO',
    below = 'gco',
    eol = 'gcA',
  },
  mappings = {
    basic = false,
    extra = false,
    extended = false,
  },
  pre_hook = nil,
  post_hook = nil,
}

M.setup = function()
  comment.setup(config)
end

return M
