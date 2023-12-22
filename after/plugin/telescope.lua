require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules"},
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      --hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
    media_files = {
      -- filetypes whitelist
      filetypes = {"png", "webp", "jpg", "jpeg", "pdf"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  }
}


require("telescope").load_extension "media_files"
require("telescope").load_extension "file_browser"
require("telescope").load_extension "harpoon"

-- ignores env and node files in specific node or python projects
vim.api.nvim_exec([[
  augroup MyTelescopeConfig
    autocmd!
    autocmd BufRead,BufNewFile */package.json setlocal filetype=node
    autocmd BufRead,BufNewFile */requirements.txt setlocal filetype=python
    autocmd BufRead,BufNewFile */pyproject.toml setlocal filetype=python
    autocmd FileType node setlocal telescope_file_ignore_patterns+=/node_modules/
    autocmd FileType python setlocal telescope_file_ignore_patterns+=*.env
  augroup END
]], false)
