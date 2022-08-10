local Plug = vim.fn['plug#']
vim.call('plug#begin','~/.vim/plugged')

--LUA UTILITIES
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

--LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'

--CMP
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'saadparwaiz1/cmp_luasnip'

--SINPPS
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'


--TELESCOPE
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

--LINE
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'

--ICONS
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

--FILE BROWSER
Plug 'kyazdani42/nvim-tree.lua'

--COLORS
Plug 'artanikin/vim-synthwave84'

vim.call('plug#end')