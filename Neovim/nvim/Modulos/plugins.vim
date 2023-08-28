"----------------------" 
"  Plugins Instalados  "
"----------------------" 
" Link a GitHub https://github.com/junegunn/vim-plug
"
"
"
call plug#begin('~/.local/share/nvim/plugged')

" Themes -----------------------
"Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'navarasu/onedark.nvim'
" Lualine ----------------------
Plug 'nvim-lualine/lualine.nvim'
" Devicons ---------------------
Plug 'kyazdani42/nvim-web-devicons'
" Auto pairs -------------------
Plug 'jiangmiao/auto-pairs'
" Plenary + Telescope ----------
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Nvim-tree --------------------
Plug 'kyazdani42/nvim-tree.lua'
" Dashboard --------------------
Plug 'glepnir/dashboard-nvim'
" Tagbar -----------------------
Plug 'https://github.com/preservim/tagbar'
" Commentary -------------------
Plug 'https://github.com/tpope/vim-commentary'
" LSP --------------------------
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
" Cmp --------------------------
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp' 
" Wilder -----------------------
Plug 'gelguy/wilder.nvim'
" Wilder -----------------------
Plug 'https://github.com/glepnir/indent-guides.nvim'
" Treesitter -------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Java -------------------------
"Plug 'mfussenegger/nvim-jdtls'

call plug#end()

