vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set tabstop=2")
vim.cmd("set number")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set hlsearch")
vim.cmd("set cursorline")
vim.cmd("set showtabline=2")
vim.opt.termguicolors=true
--vim.cmd("set signcolumn=yes")

vim.g.mapleader=" "

-- Mapear Ctrl+h para moverse a la ventana izquierda
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
-- Mapear Ctrl+l para moverse a la ventana derecha
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
-- Mapear Ctrl+c para comentar líneas seleccionadas en modo visual
vim.api.nvim_set_keymap('x', '<C-c>', ":norm I--<Esc>", { noremap = true, silent = true })


--Modos de Neovim:
    --Normal Mode (Modo Normal):
        --h, j, k, l: Moverse hacia la izquierda, abajo, arriba, derecha respectivamente.
        --w, b: Moverse a la siguiente palabra, anterior palabra.
        --0, $: Ir al principio, final de la línea respectivamente.
        --gg, G: Ir al principio, final del archivo respectivamente.
        --:q, :wq: Salir, guardar y salir.
        --:w, :x: Guardar.
        --dd: Cortar línea.
        --yy: Copiar línea.
        --p, P: Pegar después, antes del cursor respectivamente.
        --u: Deshacer.
        --Ctrl + r: Rehacer.
--
    --Insert Mode (Modo de Inserción):
        --i: Entrar al modo de inserción antes del cursor.
        --I: Entrar al modo de inserción al principio de la línea.
        --a: Entrar al modo de inserción después del cursor.
        --A: Entrar al modo de inserción al final de la línea.
        --o, O: Insertar una nueva línea debajo, encima de la línea actual respectivamente.
--
    --Visual Mode (Modo Visual):
        --v: Iniciar la selección de texto caracter por caracter.
        --V: Iniciar la selección de texto línea por línea.
        --Ctrl + v: Iniciar la selección de texto en modo bloque.
--
    --Comandos Adicionales:
        --:e nombre_archivo: Abrir un archivo.
        --:bnext, :bprev: Cambiar al siguiente, anterior buffer respectivamente.
        --:sp, :vsp: Dividir la ventana horizontal, verticalmente respectivamente.
        --Ctrl + w + h, j, k, l: Moverse entre ventanas.
--
--Atajos Específicos de Neovim:
    --Teclas Prefijo de Espacio (Leader Key):
        --, (puedes personalizar el líder según tus preferencias).
        --,w: Guardar.
        --,q: Cerrar ventana actual.
        --,b: Cambiar al siguiente buffer.
        --,bd: Borrar buffer actual.
