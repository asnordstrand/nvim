local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<cr>', opts)
