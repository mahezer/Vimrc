:let mapleader = ' '
imap jj <Esc>
imap kk <Esc>
imap :w<CR> <Esc>:w<CR>i
nmap <C-f> <Plug>CtrlSFPrompt
nmap <Leader><CR> i<CR>jj
nmap <Leader><Space> i<Space>jj 
vmap <TAB> ><CR>gv
vmap <S-TAB> <<CR>gv

"""NERDTree Commands
nmap <Leader>nt :NERDTreeToggle<CR> 
nmap <Leader>nf :NERDTreeFind<CR>

"""Tab commands
nmap <Leader>tt :tabe<CR>
nmap <Leader>tn :tabn<CR>
nmap <Leader>tp :tabp<CR>

"""Split size manager
nmap <Leader>k :res<Space>-10<CR>
nmap <Leader>j :res<Space>+10<CR>
nmap <Leader>h :vertical<Space>resize<Space>-10<CR>
nmap <Leader>l :vertical<Space>resize<Space>+10<CR>
nmap <Leader>min<CR> :res<Space>-200<CR>
nmap <Leader>vmin<CR> :vertical<Space>resize<Space>-200<CR>
nmap <Leader>max<CR> :res<Space>+200<CR>
nmap <Leader>vmax<CR> :vertical<Space>resize<Space>+200<CR>

"""HTML fix with Tidy
"""nmap <Leader><TAB> :!tidy -q -i -e -latin1 %:p<CR>
nmap <Leader><TAB> :SyntasticCheck html/tidy<CR>

"""Fugitive commands
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>

vnoremap // y/<C-R>"<CR>

set nocompatible
syntax enable
set encoding=utf-8
set showcmd
set dir=~/tmp
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
