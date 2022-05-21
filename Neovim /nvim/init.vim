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

" Plugin configuration files
source $HOME/.config/nvim/Modules/dashboard.vim
source $HOME/.config/nvim/Modules/deoplete.vim
source $HOME/.config/nvim/Modules/telescope.vim
source $HOME/.config/nvim/Modules/nvim-tree.vim


" Keymap --------------------------------------------------------"
"
" Dashboard
" Space d b = Board
" Space f f = Find file
" space f h = search history
" Space c n = New file
" Space c f = Neovim configuration file
"
"
" Super tab
" Control n = Navigate between suggestions
"
"
" Nvim-tree.lua
" ; t = Open/close Nvimtree
" ; r = Update Nvimtree
" ; n = Find file in Nvimtree
"
"
" Telescope
" : f = Find file
" ; g = Grep live
" ; b = Buffer
" ; h = Help tags
"
"
" Tag bar
" ; c = Open/close tag bar
"
"
" General navigation
" Control x = Open file in hsplit window
" Control v = Open file in vsplit window
" Control t = Open file in a new tab
" Control Left Arrow = Toggle Left Tab
" Control Right Arrow = Toggle Right Tab 
" Control ww = Change window
"
"
" Commentary
" gcc on a line to comment line
" gcc on a group of line to comment that group

