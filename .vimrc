set nocompatible


" Vim-plugins from vundle
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

syntax on
colorscheme darkblue

map <C-n> :NERDTreeToggle<CR>
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

set nowrap
set number
set showcmd
set mouse=a
set splitbelow
set splitright
set hidden

set scrolloff=3     " Min. screen lines above/below cursor
set sidescrolloff=1 " Min. screen columns left/right of the cursor

set list
set listchars=
set listchars+=trail:·      " Trailing spaces, i.e. spaces at the end of a line
set listchars+=tab:>-       " Tab characters
" Indicate that there is more of a line than what is visible
set listchars+=extends:>
set listchars+=precedes:<

set ignorecase      " Ignore cases when searching
set hlsearch        " Highlight searches
set nowrapscan      " Do not wrap the search
set incsearch       " Show results while searching

" Tabs and indenting
set shiftwidth=4    " Indenting is 4 spaces
set softtabstop=-1  " When pressing tab use shiftwidth amount of spaces
set expandtab       " Always insert space characters (no tabs)
set autoindent      " automatically indent next line the same as the previous

" Tab completion in command-line
set wildmenu
set wildmode=longest,full
set wildignore+=*.zip,*.so,*.o,*.pyc,*.pdf,*.mp4

" Statusline
set laststatus=2    " Always show statusline
set statusline=
set statusline+=%f  " File path
set statusline+=%y  " filetype
set statusline+=%m
set statusline+=%r
set statusline+=%q
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

