local status_mason_ok, mason = pcall(require, "mason")
if not status_mason_ok then
	return
end

local status_mason_lsp_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_mason_lsp_ok then
	return
end

local servers = { "jsonls", "sumneko_lua", "angularls", "cssls", "tsserver", "eslint", "html", "pyright"}

local lspconfig = require("lspconfig")

mason.setup({
   ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
  ensure_installed = servers
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("onedapperterm.lsp.handlers").on_attach,
		capabilities = require("onedapperterm.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "onedapperterm.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
  lspconfig[server].setup(opts)
end
