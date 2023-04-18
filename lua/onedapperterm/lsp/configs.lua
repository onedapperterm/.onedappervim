local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
	return
end

lsp.preset("recommended")

local servers = { "jsonls", "angularls", "lua_ls", "cssls", "tsserver", "eslint", "html", "pyright"}

lsp.ensure_installed(servers)

for _, server in pairs(servers) do
  lsp.configure( server, {
    on_attach = require("onedapperterm.lsp.handlers").on_attach,
  })

end

--TODO: Check how to pass the custom configs on the loop to lsp-zero for every server
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            -- Fix Undefined global 'vim'
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


lsp.setup()

-- for _, server in pairs(servers) do
-- 	local opts = {
-- 		on_attach = require("onedapperterm.lsp.handlers").on_attach,
-- 		capabilities = require("onedapperterm.lsp.handlers").capabilities,
-- 	}
-- 	local has_custom_opts, server_custom_opts = pcall(require, "onedapperterm.lsp.settings." .. server)
-- 	if has_custom_opts then
-- 		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
-- 	end
--   lspconfig[server].setup(opts)
-- end
