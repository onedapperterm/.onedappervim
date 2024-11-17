local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git" ,".venv", "__pycache__", ".cache", ".vscode", ".idea", ".DS_Store", ".gitignore", ".gitmodules", ".gitattributes", ".gitlab-ci.yml", ".gitkeep", ".gitlab", ".github"},
    layout_config = {
      vertical = { width = 0.9 },
      horizontal = { width = 0.9 }
    },
    path_display = {
      "smart",
    },
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
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      }
    },
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


telescope.load_extension "media_files"
telescope.load_extension "file_browser"
telescope.load_extension "harpoon"

-- ignores env and node files in specific node or python projects
-- vim.api.nvim_exec([[
--   augroup MyTelescopeConfig
--     autocmd!
--     autocmd BufRead,BufNewFile */package.json setlocal filetype=node
--     autocmd BufRead,BufNewFile */requirements.txt setlocal filetype=python
--     autocmd BufRead,BufNewFile */pyproject.toml setlocal filetype=python
--     autocmd FileType node setlocal telescope_file_ignore_patterns+=/node_modules/
--     autocmd FileType python setlocal telescope_file_ignore_patterns+=*.env
--   augroup END
-- ]], false)
