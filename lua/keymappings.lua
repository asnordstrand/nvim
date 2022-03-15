local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<cr>', opts)

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<cr>', opts)
