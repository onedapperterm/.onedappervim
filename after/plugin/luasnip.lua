local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

local types = require "luasnip.util.types"

luasnip.config.set_config {
  -- This tells LuaSnip to remember to keep around the last snippet.
  -- You can jump back into it even if you move outside of the selection
  history = true,

  -- This one is cool cause if you have dynamic snippets, it updates as you type!
  updateevents = "TextChanged,TextChangedI",

  -- Autosnippets:
  enable_autosnippets = true,

  -- Crazy highlights!!
  -- #vid3
  -- ext_opts = nil,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { " « ", "NonTest" } },
      },
    },
  },
}

luasnip.snipets = {
  all = {
    luasnip.parser.parse_snippet("ex", "--if you see me this shit works!"),
  }
}

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./custom_snipps" } })
