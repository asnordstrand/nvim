local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

local mappings = {
  ["w"] = { "<cmd>w!<CR>", "Save", },
  ["q"] = { "<cmd>q!<CR>", "Quit", },
  ["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer", },
  ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment", },
  ["p"] = { "<cmd>Lazy<CR>", "Plugins", },
}

local vopts = {
  mode = "v",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

local vmappings = {
  ["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)", },
}

wk.setup({})
wk.register(mappings, opts)
wk.register(vmappings, vopts)
