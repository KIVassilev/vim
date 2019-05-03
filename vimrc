" -------------------- VUNDLE -------------------
set rtp+=~/.vim/bundle/Vundle.vim
let g:ale_completion_enabled = 1
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimproc.vim'
call vundle#end()

" ---------------- PLUGIN OPTIONS ---------------
let g:ctrlp_extensions = ['tag']
let g:NERDTreeQuitOnOpen = 1 
let g:NERDTreeIgnore = ['\.pyc$']
let g:airline#extensions#bufferline#enabled = 1

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
" ---------------- COLOR & GUI ------------------
syntax on
if has("gui_running")
    colorscheme VisualStudioDark
    set guioptions-=T
    set guioptions-=m
else
    colorscheme delek
endif

" -------------------- OPTIONS ------------------
set sw=2
set tabstop=2
set expandtab
set smartindent
set incsearch
set ignorecase
set hlsearch
set wmh=0
set mouse=a
set hidden
set so=8
set number
set statusline=%f%m%r%=[BUF:%n][POS:%p%%]
set ls=2
set wildignore+=node_modules/**

" ------------------- SHORTCUTS -----------------
" Split zoom in/out
map - <C-W>-
map + <C-W>+

" Next split
map <space><space> <c-W>w_
" Zoom current split
map <space>z <c-W>_
" Make splits same size
map <space>= <c-W>=
" Close split
map <space>c <c-W>q
" Swap split
map <space>r <c-W>r

" System Clipboard
map <c-y> "+y
map <c-p> "+P

" Buffers
nnoremap <TAB> :buffers<CR>:buffer<Space>
map <S-TAB> :CtrlPMRU<CR>
map <C-TAB> :CtrlPTag<CR>

" Fn keys
map <F1> :NERDTreeToggle<CR>
map <F2> :wa<CR>
map <F3> :terminal<CR>
map <F4> :cn<CR>
map <S-F4> :cp<CR>
map <F5> :w<CR>:! ./%<CR>
map <F6> :vimgrep <C-R><C-W> **/*.
map <F7> :wa<CR>:make<CR>

