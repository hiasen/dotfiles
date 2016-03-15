" Vim-plugins from vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'kien/ctrlp.vim'
    Plugin 'JuliaLang/julia-vim'
    Plugin 'justinmk/vim-syntax-extra'
call vundle#end()

filetype plugin indent on
