local ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not ok then
  return
end

local M = {}

local mappings = {
  ['gD'] = '<cmd>lua vim.lsp.buf.declaration()<CR>',
  ['gd'] = '<cmd>lua vim.lsp.buf.definition()<CR>',
  ['K'] = '<cmd>lua vim.lsp.buf.hover()<CR>',
  ['gi'] = '<cmd>lua vim.lsp.buf.implementation()<CR>',
  ['<C-k>'] = '<cmd>lua vim.lsp.buf.signature_help()<CR>',
  ['rn'] = '<cmd>lua vim.lsp.buf.rename()<CR>',
}

local on_attach = function(_, bufnr)
  for key, map in pairs(mappings) do
    local opts = { noremap = true, silent = true, }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', key, map, opts)
  end
end

local options = {
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  flags = {
    debounce_text_changes = 150,
  },
}

M.setup = function()
  lsp_installer.on_server_ready(function(server)
    if server.name == 'sumneko_lua' then
      options.settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', },
          },
          telemetry = {
            enable = false,
          },
        },
      }
    end
    server:setup(options)
  end)
end

return M
