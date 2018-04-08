set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au BufNewFile,BufRead *.py call SetPEP8()

function SetPEP8()	    
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set textwidth=79
  set expandtab
  set autoindent
  set fileformat=unix
endfunction

let python_highlight_all=1
syntax on

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2

set path+=**

" file explorer configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" let g:netrw_browse_split = 1
let g:netrw_winsize = 25
