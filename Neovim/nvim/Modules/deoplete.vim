" Deoplete + Supertabs ----------------------------------------------------------------------"
" Links to GitHub https://github.com/Shougo/deoplete.nvim
"                 https://github.com/ervandew/supertab
" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1

" Invertir direccion de navegacion (de arriba a abajo)
" let g:SuperTabDefaultCompletionType = '<c-n>'

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END
