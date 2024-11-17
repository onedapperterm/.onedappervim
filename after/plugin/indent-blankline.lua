local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "IBLIndent", { fg = "#1c2330" })
end)

require("ibl").setup {
    indent = {
        char = "▏",
        highlight = "IBLIndent"
    },
    scope = {
        show_start = false,
        show_end = false,
        injected_languages = false,
        priority = 1000,
        show_exact_scope = false,
    },
    whitespace = { remove_blankline_trail = true },
}
