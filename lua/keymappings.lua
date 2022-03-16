local mappings = {
  ['<Space>e'] = '<cmd>lua vim.diagnostic.open_float()<CR>',
  ['[d'] = '<cmd>lua vim.diagnostic.goto_prev()<CR>',
  [']d'] = '<cmd>lua vim.diagnostic.goto_next()<CR>',
  ['<Space>q'] = '<cmd>lua vim.diagnostic.setloclist()<CR>',
  ['<C-n>'] = ':NvimTreeToggle<CR>',
  ['<leader>r'] = ':NvimTreeRefresh<CR>',
  ['<leader>n'] = ':NvimTreeFindFile<CR>',
  ['[b'] = ':BufferLineCycleNext<CR>',
  [']b'] = ':BufferLineCyclePrev<CR>',
  ['<leader>w'] = ':bdelete!<CR>',
}

for k, v in pairs(mappings) do
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', k, v, opts)
end
