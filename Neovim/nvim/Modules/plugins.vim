" Directorio de plugins ---------------------------------------------------------------------"
" Link to Vim-Plug GitHub https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
Plug 'ervandew/supertab'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/dashboard-nvim'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/tpope/vim-commentary'

call plug#end()

