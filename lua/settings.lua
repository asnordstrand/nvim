local options = {
  clipboard = 'unnamedplus',
  completeopt = { 'menuone', 'noinsert', 'noselect', },
  fileencoding = 'utf-8',
  termguicolors = true,
  background = 'dark',
  showmode = false,
  updatetime = 300,
  hidden = true,
  signcolumn = 'number',
  number = true,
  cursorline = true,
  wrap = false,
  splitbelow = true,
  splitright = true,
  incsearch = true,
  ignorecase = true,
  smartindent = true,
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,
}

vim.opt.shortmess:append 'c'
vim.opt.swapfile = false

for k, v in pairs(options) do
  vim.opt[k] = v
end
