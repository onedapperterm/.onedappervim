local Remap = require("onedapperterm.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
--local nmap = Remap.nmap

--Nvim Tree
nnoremap("<C-t>", ":NvimTreeToggle<CR>")

--Splits Navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
inoremap("<C-h>", "<C-w>h")
inoremap("<C-l>", "<C-w>l")
vnoremap("<C-h>", "<C-w>h")
vnoremap("<C-l>", "<C-w>l")

--Buffers Navigation
nnoremap("<s-tab>", ":bprevious<CR>")
nnoremap("<tab>", ":bnext<CR>")
nnoremap("<s-q>", ":bd<CR>")

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
vnoremap("ı", "y'<pgv=gv")
vnoremap("º", ":m '>+1<CR>gv=gv")
vnoremap("∆", ":m '<-2<CR>gv=gv")

--Telescope
nnoremap("<C-p>", ":Telescope find_files<CR>")
nnoremap("gr",    ":Telescope lsp_references<CR>")
inoremap("<C-p>", "<Esc>:Telescope find_files<CR>==gi")
vnoremap("<C-p>", ":Telescope find_files<CR>gv==gv")

--SOME NICE MOVES
nnoremap ("<s-l>", "A<Esc>")
nnoremap ("<s-h>", "_")
vnoremap ("<s-l>", "A<Esc>")
vnoremap ("<s-h>", "_")

--Others
nnoremap("<leader>il", ":IndentBlanklineToggle<CR>")
nnoremap ("<esc><esc>", ":silent! nohls<cr>")

--Paste without loosing current register
xnoremap("<leader>p", "\"_dP")

--Copy to system clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+y")

--Search and replace current word
nnoremap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
