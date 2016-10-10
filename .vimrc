set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'jiangmiao/auto-pairs'
Plugin 'shougo/neocomplete.vim'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'mileszs/ack.vim'

call vundle#end()        
filetype plugin indent on

" Default vim sutff
syntax on
set relativenumber
set tabstop=2
set shiftwidth=2

" Open NerdTree in all tabs
let g:nerdtree_tabs_open_on_console_startup=1

" Goto file in project view
nmap ,n :NERDTreeFind<CR>

" I dont remember
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Let me Ack instead of Ack!
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

"======================================
"   JAVASCRIPT SYNTAX
"======================================
let g:jsx_ext_required = 0

" Allows for split  navigation with ctrl+key 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fixes issues with backspace
set backspace=indent,eol,start
