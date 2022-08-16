local ok, wk = pcall(require, 'which-key')
if not ok then
  return
end

local M = {}

local config = {
  opts = {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  },
  vopts = {
    mode = 'v',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  },
  mappings = {
    ['/'] = {
      '<CMD>lua require("Comment.api").toggle.linewise.current()<CR>',
      'Comment',
    },
    w = { '<cmd>w!<CR>', 'Save', },
    q = { '<cmd>q!<CR>', 'Quit', },
    e = { '<cmd>NvimTreeToggle<CR>', 'Explorer', },
    h = {
      name = 'help',
      f = { '<cmd>Telescope help_tags<CR>', 'Find Help' },
      c = { '<cmd>Telescope commands<CR>', 'Commands', },
    },
    b = {
      name = 'buffer',
      f = { '<cmd>Telescope buffers<CR>', 'Find Buffer', },
      h = { '<cmd>BufferLineCloseLeft<CR>', 'Close to the Left', },
      j = { '<cmd>BufferLineCyclePrev<CR>', 'Go to Previous', },
      k = { '<cmd>BufferLineCycleNext<CR>', 'Go to Next', },
      l = { '<cmd>BufferLineCloseRight<CR>', 'Close to the Right', },
      q = { '<cmd>BufferLinePickClose<CR>', 'Pick Close', },
    },
    p = {
      name = 'packer',
      s = { '<cmd>PackerSync<CR>', 'Sync', },
      S = { '<cmd>PackerStatus<CR>', 'Status', },
      i = { '<cmd>PackerInstall<CR>', 'Install', },
      u = { '<cmd>PackerUpdate<CR>', 'Update', },
    },
    f = {
      name = 'file',
      f = { '<cmd>Telescope find_files<CR>', 'Find File', },
      r = { '<cmd>Telescope oldfiles<CR>', 'Open Recent' },
      g = { '<cmd>Telescope live_grep<CR>', 'Grep', },
    },
    l = {
      name = 'lsp',
      a = { '<cmd>lua vim.lsp.buf.code_action()<CR>', 'Code Action', },
      f = { '<cmd>lua vim.lsp.buf.formatting()<CR>', 'Format', },
      i = { '<cmd>LspInfo<CR>', 'Info', },
      r = { '<cmd>lua vim.lsp.buf.rename()<CR>', 'Rename', },
      j = { '<cmd>lua vim.diagnostic.goto_next()<CR>', 'Go to Next', },
      k = { '<cmd>lua vim.diagnostic.goto_prev()<CR>', 'Go to Previous', },
      h = { '<cmd>lua vim.lsp.buf.hover()<CR>', 'Hover', },
      p = {
        name = 'peek',
        d = { '<cmd>lua vim.lsp.buf.definition()<CR>', 'Definition', },
        t = { '<cmd>lua vim.lsp.buf.type_definition()<CR>', 'Type Definition', },
        i = { '<cmd>lua vim.lsp.buf.implementation()<CR>', 'Implementation', },
        s = { '<cmd>lua vim.lsp.buf.signature_help()<CR>', 'Signature', },
      },
    },
  },
  vmappings = {
    ['/'] = {
      '<ESC><CMD>lua require("Comment.api").locked("comment.linewise")(vim.fn.visualmode())<CR>',
      'Comment',
    }
  },
}

M.setup = function()
  wk.setup({})
  wk.register(config.mappings, config.opts)
  wk.register(config.vmappings, config.vopts)
end

return M
