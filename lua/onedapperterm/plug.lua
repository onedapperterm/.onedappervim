local Plug = vim.fn['plug#']
vim.call('plug#begin','~/.vim/plugged')

--LUA UTILITIES
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

--TREE SITTER AND HIGHLIGHT
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'windwp/nvim-autopairs'
Plug 'm-demare/hlargs.nvim'
Plug 'RRethy/vim-illuminate'

--LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

--CMP
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'saadparwaiz1/cmp_luasnip'

--SINPPS AND UTILITIES
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
-- Plug 'github/copilot.vim'
Plug 'folke/todo-comments.nvim'
Plug 'sindrets/diffview.nvim'

--TELESCOPE
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'

--LINE
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'phanviet/vim-monokai-pro'
Plug 'lukas-reineke/indent-blankline.nvim'

--ICONS
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

--FILE BROWSER
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ThePrimeagen/harpoon'

--COLORS
Plug 'vv9k/bogster'
Plug 'maxmx03/fluoromachine.nvim'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'tomasr/molokai'
Plug 'nvimdev/oceanic-material'
Plug 'rose-pine/neovim'
Plug 'catppuccin/nvim'
Plug 'rafi/awesome-vim-colorschemes'

--UTIL
Plug 'itchyny/calendar.vim'
Plug 'rhysd/vim-grammarous'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'jamestthompson3/nvim-remote-containers'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'skywind3000/asyncrun.vim'

-- JUST FOR FUN
Plug 'eandrju/cellular-automaton.nvim'


vim.call('plug#end')
