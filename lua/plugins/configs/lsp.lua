local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local handlers = {
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
    })
  end,
  ["lua_ls"] = function()
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim", },
          },
        },
      },
      telemetry = {
        enable = false,
      },
    })
  end,
}

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
  },
  handlers = handlers,
})
