local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>',  api.tree.change_root_to_parent,  opts('Up'))
  vim.keymap.set('n', '?',      api.tree.toggle_help,            opts('Help'))
  vim.keymap.set('n', 'l',      api.node.open.edit,               opts('Open: New Tab'))
  vim.keymap.set('n', 'h',      api.node.navigate.parent_close,  opts('Close Directory'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
    hijack_netrw = true,
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        side = "left",
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_open = "",
              arrow_closed = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              untracked = "U",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        dotfiles = true,
      },
    })

