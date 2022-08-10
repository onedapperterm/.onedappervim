local status_ok = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("onedapperterm.lsp.configs")
require("onedapperterm.lsp.handlers").setup()
require("onedapperterm.lsp.null-ls")
--require'lspconfig'.angularls.setup{}
