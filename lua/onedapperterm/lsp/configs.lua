local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
	return
end

lsp.preset("recommended")

local servers = {
  "jsonls",
  "angularls",
  "lua_ls",
  "cssls",
  "tsserver",
  "eslint",
  "html",
  "pyright",
  "astro",
  "volar",
  "rust_analyzer",
  "clangd",
}

local dapper_handlers = require("onedapperterm.lsp.handlers")
lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  dapper_handlers.on_attach(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = servers,

  handlers = {
    lsp.default_setup,
    ["lua_ls"] = function()
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    end,
  },
})


lsp.setup()
