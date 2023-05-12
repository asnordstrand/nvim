if vim.fn.has("nvim-0.8") ~= 1 then
  vim.schedule(function()
    vim.notify("Neovim v0.8+ is required.", vim.log.levels.WARN)
  end)
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = "<space>" and " "

require("lazy").setup("plugins")

require("options")
require("colorscheme")
