"-------------------" 
" Plugins installed "
"-------------------" 
" Link to Vim-Plug GitHub https://github.com/junegunn/vim-plug
"
"
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/dashboard-nvim'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'gelguy/wilder.nvim'

call plug#end()

