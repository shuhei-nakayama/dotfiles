call plug#begin('~/.vim/plugged')
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
call plug#end()

" netrw
let g:netrw_liststyle=3
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" unite.vim
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=200
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>

set mouse=
set tabstop=4
set shiftwidth=4
set expandtab

:syntax on
:set number
:set ignorecase

