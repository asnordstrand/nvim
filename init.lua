if vim.fn.has('nvim-0.8') ~= 1 then
  vim.schedule(function()
    local level = vim.log.levels.WARN
    vim.notify('Unsupported Neovim version found. Neovim v0.8+ is required.', level)
  end)
end

require('settings')
require('keymappings')
require('plugins')

vim.cmd('colorscheme kanagawa')
