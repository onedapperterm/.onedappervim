local Remap = require("onedapperterm.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
--local nmap = Remap.nmap

--Nvim Tree and Undotree
nnoremap("<leader>t", " :UndotreeHide<CR> :NvimTreeToggle<CR>")
nnoremap("<leader>ff", ":NvimTreeFindFile <CR>")
nnoremap("<leader>u", " :NvimTreeClose<CR> :UndotreeToggle<CR>")

--Splits Navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
inoremap("<C-h>", "<C-w>h")
inoremap("<C-l>", "<C-w>l")
vnoremap("<C-h>", "<C-w>h")
vnoremap("<C-l>", "<C-w>l")
nnoremap("<S-up>", "<C-w>k")
nnoremap("<S-down>", "<C-w>j")

--Buffers Navigation
nnoremap("<s-tab>", ":bprevious<CR>")
nnoremap("<tab>", ":bnext<CR>")
nnoremap("<s-q>", ":bd<CR>")
nnoremap("<s-left>", ":BufferLineMovePrev<CR>")
nnoremap("<s-right>", ":BufferLineMoveNext<CR>")

--Line Options
nnoremap("ˆ", "yyP")
nnoremap("ı", "yyp")
nnoremap("º", ":m .+1<CR>==")
nnoremap("∆", ":m .-2<CR>==")

inoremap("ˆ", "<Esc>yyP==gi")
inoremap("ı", "<Esc>yyp==gi")
inoremap("º", "<Esc>:m .+1<CR>==gi")
inoremap("∆", "<Esc>:m .-2<CR>==gi")

vnoremap("ˆ", "y'>p")
vnoremap("ı", "y`>p`<gv")
vnoremap("º", ":m '>+1<CR>gv=gv")
vnoremap("∆", ":m '<-2<CR>gv=gv")

--Telescope
nnoremap("<leader>r", ":Telescope lsp_references<CR>")
vim.api.nvim_buf_set_keymap(0, 'n', 'gr', '<cmd>Telescope lsp_references<cr>', { noremap = true }) --nnoremap function not working well with this mapping
vim.api.nvim_buf_set_keymap(0, 'n', 'gd', '<cmd>Telescope lsp_definitions<cr>', { noremap = true }) --nnoremap function not working well with this mapping
nnoremap("<leader>di", ":Telescope git_status<CR>")
nnoremap("<leader>gb", ":Telescope git_<CR>")
nnoremap("<leader>lo", ":Telescope git_bcommits<CR>")
nnoremap("<C-p>", ":Telescope find_files<CR>")
inoremap("<C-p>", "<Esc>:Telescope find_files<CR>==gi")
vnoremap("<C-p>", ":Telescope find_files<CR>gv==gv")

--Fugitive
nnoremap("<leader>gs", ":tab Git <CR>" )
nnoremap("<leader>ga", ":tab Git add . <CR>" )
nnoremap("<leader>gc", ":tab Git commit <CR>" )

--SOME NICE MOVES
nnoremap ("<s-l>", "$")
nnoremap ("<s-h>", "0")
vnoremap ("<s-l>", "$h")
vnoremap ("<s-h>", "0")

--Others
nnoremap ("<esc><esc>", ":silent! nohls<cr>")

--Paste without loosing current register
xnoremap("<leader>p", "\"_dP")

--Copy to system clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+y")

--Search and replace current word
nnoremap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
