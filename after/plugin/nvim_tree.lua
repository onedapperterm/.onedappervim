require("nvim-tree").setup({
    hijack_netrw = true,
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        side = "left",
        mappings = {
          list = {
            { key = { "l", "<CR>", "o" }, action = "edit" },
            { key = "h", action = "close_node" },
            { key = "v", action = "vsplit" },
            { key = "<C-t>", action = "" },
          },
        },
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
