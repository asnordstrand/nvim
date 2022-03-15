local lspconfig = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')

local mappings = {
  ['gD'] = '<cmd>lua vim.lsp.buf.declaration()<CR>',
  ['gd'] = '<cmd>lua vim.lsp.buf.definition()<CR>',
  ['K'] = '<cmd>lua vim.lsp.buf.hover()<CR>',
  ['gi'] = '<cmd>lua vim.lsp.buf.implementation()<CR>',
  ['<C-k>'] = '<cmd>lua vim.lsp.buf.signature_help()<CR>',
  ['rn'] = '<cmd>lua vim.lsp.buf.rename()<CR>',
}

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  for key, map in pairs(mappings) do
    local opts = { noremap = true, silent = true, }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', key, map, opts)
  end
end

lsp_installer.on_server_ready(function(server)
  server:setup({
    on_attach = on_attach,
    capabilities = require('cmp_nvim_lsp').update_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    ),
    flags = {
      debounce_text_changes = 150,
    },
  })
end)
