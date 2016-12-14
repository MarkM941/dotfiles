set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'jiangmiao/auto-pairs'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'mileszs/ack.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'chriskempson/base16-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()        
filetype plugin indent on

" Default vim sutff
syntax on
set relativenumber
set tabstop=2
set shiftwidth=2
set hidden
set showcmd
set cursorline
set clipboard=unnamed

" Color scheme (uses tomorrow-dark)
colorscheme base16-default-dark

" Map leader
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>

" Goto file in project view
nmap ,n :NERDTreeFind<CR>
nnoremap gn :NERDTreeToggle<CR>

" I dont remember
autocmd StdinReadPre * let s:std_in=1

" Let me Ack instead of Ack!
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Stop needing to capitalize fugitive commands
cnoreabbrev gs Gstatus
cnoreabbrev gc Gcommit
cnoreabbrev gpush Gpush

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

" Disable auto commenting lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" move to beginning/end of line
onoremap B ^
onoremap E $
nnoremap B ^
nnoremap E $
vnoremap B ^
vnoremap E $

" $/^ doesn't do anything to train me to use new binds
nnoremap $ <nop>
nnoremap ^ <nop>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Set location for swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Map *
nnoremap <leader>f *

" eslint stuff
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" Set ctrlp to use filename   
let g:ctrlp_by_filename = 1

" ignore node_modules
set wildignore+=*/node_modules/*

" Set ctrl to display 15 results instead of 10
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'

" Dislpay airline with only one tab doesn't seem to work
let g:airline#extensions#tabline#enabled = 1

