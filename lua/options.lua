local options = {
  fileencoding = "utf-8", 
  mouse = "a",
  termguicolors = true,
  showmode = false,
  clipboard = "unnamedplus",
  completeopt = { "menuone", "noinsert", "noselect", },
  updatetime = 300,
  hidden = true,
  signcolumn = "number",
  number = true,
  cursorline = true,
  wrap = false,
  splitbelow = true,
  splitright =  true,
  incsearch = true,
  ignorecase = true,
  expandtab = true,
  smartindent = true,
  shiftwidth = 2,
  tabstop = 2,
  timeout = true,
  timeoutlen = 300,
  swapfile = false,
  backup = false,
  writebackup = false,
  scrolloff = 8,
  sidescrolloff = 8,
  backspace = "indent,eol,start",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
