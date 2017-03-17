"""Set a leader key, so you have a clean keyboard to map after <Leader>
:let mapleader = ' '

"""Escape insert mode everytime you go double 'k' or double 'j'
imap jj <Esc>
imap kk <Esc>

"""Sometimes I forget to leave insert mode to save my files, this is what saves me
imap :w<CR> <Esc>:w<CR>i

"""This is the map to open Ctrlsf, a plugin to search strings all over the project
nmap <C-f> <Plug>CtrlSFPrompt

""" This mapping is to create a blank line without having to do all the work needed for creating a blank line
nmap <Leader><CR> i<CR>jj

""" This mapping is to insert a blank space without having to do all the work needed for creating a blank space
nmap <Leader><Space> i<Space>jj 

"""Those are to indent code selected in visual mode, and stay in visual mode. Ain't that neat?
vmap <TAB> ><CR>gv
vmap <S-TAB> <<CR>gv

"""This will open a file tree for you to walk around your directories
nmap <Leader>nt :NERDTreeToggle<CR> 

"""This command will find the current file inside your file tree
nmap <Leader>nf :NERDTreeFind<CR>

"""To the tab lovers, I have something for you

"""Create a new tab
nmap <Leader>tt :tabe<CR>

"""Go to next tab
nmap <Leader>tn :tabn<CR>

"""Go to previous tab
nmap <Leader>tp :tabp<CR>

"""Those commands were make for you to manually manage your splits

"""Those are to make splits bigger/smaller
nmap <Leader>k :res<Space>-10<CR>
nmap <Leader>j :res<Space>+10<CR>
 
"""Those are to make vertical splits bigger/smaller
nmap <Leader>h :vertical<Space>resize<Space>-10<CR>
nmap <Leader>l :vertical<Space>resize<Space>+10<CR>

"""Those are to make given split as huge as it can be
nmap <Leader>min<CR> :res<Space>-200<CR>
nmap <Leader>max<CR> :res<Space>+200<CR>


"""Those are to make given vertical split as huge as it can be
nmap <Leader>vmin<CR> :vertical<Space>resize<Space>-200<CR>
nmap <Leader>vmax<CR> :vertical<Space>resize<Space>+200<CR>

"""Fugitive commands

"""Fugitive is a neat plugin made by tpope, and it lets you do git stuff on vim
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>

"""Select some text, press double forward slashes, find it everywhere else in the current file
vnoremap // y/<C-R>"<CR>

"""Break compatibility with Vi, which means enabling every sweet stuff Vim brings us(which I am not completely aware of)
set nocompatible

"""Set syntax highlighting
syntax enable

"""No much explanation needed here
set encoding=utf-8

"""Show the commands you've been pressing on vim 
set showcmd

"""Set a dir to send your swp files
set dir=~/tmp

"""Indentation stuff
filetype plugin indent on

"" Whitespace
set nowrap 
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2

nnoremap <S-TAB> <<
nnoremap <TAB> >>

call plug#begin('~/.vim/plugged')
  Plug 'w0ng/vim-hybrid'
  Plug 'StanAngeloff/php.vim'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'jwalton512/vim-blade'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'
  Plug 'itchyny/lightline.vim'
  Plug 'lanox/lanox-vim-theme'
  Plug 'vim-scripts/xoria256.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'morhetz/gruvbox'
  Plug 'wesQ3/vim-windowswap'
  Plug 'dyng/ctrlsf.vim'
  Plug 'maksimr/vim-jsbeautify'
  Plug 'zenbro/mirror.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'terryma/vim-multiple-cursors'
call plug#end()

syntax on
set t_Co=256
colorscheme gruvbox
set background=dark

let g:lightline = {
      \}

highlight ColorColumn ctermbg=8

cab W w
cab Wq wq
cab Wqa wqa
cab WqA wqa
cab WQa wqa
cab WQA wqa
cab wQA wqa
cab wqA wqa
cab wQ wq
cab WA wa
cab Q q
cab Qa qa
cab Vs vs
cab VS vs
cab vS vs
cab Sp sp
cab SP s
cab Sh sh
cab SH sh
cab sH sh
cab So so
cab sO so
cab SO so

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%F
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_html_checkers = ['tidy']
