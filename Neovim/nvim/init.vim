" Neovim configuration file
" Nicolas Marinucci
" 21/05/2022
" WIP
"
"
" Modules --------------------------------------------------------"
"
" Plugins installed (vim-plug)
source $HOME/.config/nvim/Modules/plugins.vim

" General configuration file
source $HOME/.config/nvim/Modules/general.vim
source $HOME/.config/nvim/Modules/keymap.vim

" Plugin configuration files
source $HOME/.config/nvim/Modules/dashboard.lua
source $HOME/.config/nvim/Modules/telescope.vim
source $HOME/.config/nvim/Modules/nvim-tree.vim
source $HOME/.config/nvim/Modules/lspconfig.lua
source $HOME/.config/nvim/Modules/nvim-cmp.vim
