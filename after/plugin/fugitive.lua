local Remap = require("onedapperterm.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>gs", ":tab Git <CR>" )
nnoremap("<leader>ga", ":tab Git add . <CR>" )
nnoremap("<leader>gc", ":tab Git commit <CR>" )
nnoremap("<leader>gf", ":tab Git diff --cached <CR>" )

