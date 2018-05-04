"Set a leader key, so you have a clean keyboard to map after <Leader>
let mapleader = ' '

"""Escape insert mode everytime you go double 'k' or double 'j'
imap jj <Esc>
imap kk <Esc>

"""Reload file
nmap <F5> :e<CR>

"""Sometimes I forget to leave insert mode to save my files, this is what saves me
imap :w<CR> <Esc>:w<CR>i

"""This is the map to open Ctrlsf, a plugin to search strings all over the project
nmap <C-f> <Plug>CtrlSFPrompt

nmap <C-p> :find<Space>

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
nnoremap <Leader>k :res<Space>-10<CR>
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

"""Buffer switching
nnoremap <Leader>bp :bprev<CR>
nnoremap <Leader>bn :bnext<CR>
"""Buffer deleting
nnoremap <Leader>bc :BD<CR>

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

"""" Do not break lines that overflows the screen
set nowrap 
""" Setting tab size; Tabs are actually 2 spaces, but the size is the same
set tabstop=2 shiftwidth=2
""" Set tabs to be spaces instead of actual tabs
set expandtab
""" Allows backspace to walk around better
set backspace=indent,eol,start

""" Highlight search matches
set hlsearch
""" Start highlighting as you type the search
set incsearch
""" Ignore case on searches
set ignorecase
""" If you type upper and lower cased letters, they will be respected
set smartcase

""" Always draw the status line
set laststatus=2

""" You can indent with Tab and unindent with Shift + Tab
nnoremap <S-TAB> <<
nnoremap <TAB> >>

""" Start plugin imports
call plug#begin('~/.vim/plugged')
  """ Vim theme
  Plug 'w0ng/vim-hybrid'
  """ PHP syntax highlighter
  Plug 'StanAngeloff/php.vim'
  """ Plugin that shows the folder tree
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  """ PHP Laravel Blade syntax highlighter
  Plug 'jwalton512/vim-blade'
  """ When you type {, [ and ( vim automatically draws the corresponding }, ] or )
  Plug 'jiangmiao/auto-pairs'
  """ Just check this webpage: https://docs.emmet.io/cheat-sheet/ . Beautiful.  Most of the commands in this cheatsheet work in vim
  Plug 'mattn/emmet-vim'
  """ Forgot to put some stuff inside parenthesis, quotes, whatever ? No problem we got that. tpope did, actually
  Plug 'tpope/vim-surround'
  """ Custom status line
  Plug 'itchyny/lightline.vim'
  """ Another theme. Works good for Python
  Plug 'lanox/lanox-vim-theme'
  """ Neat colorscheme
  Plug 'vim-scripts/xoria256.vim'
  """ Google for editorconfig. This plugin makes vim obey it.
  Plug 'editorconfig/editorconfig-vim'
  """ The theme i'm (and you, if you didn't changed it) currently using
  Plug 'morhetz/gruvbox'
  """ Beautiful plugin. Got 2 splits and want to swap them ? this is what you'll use
  Plug 'wesQ3/vim-windowswap'
  """ Search on the whole directory ? got that part covered
  Plug 'dyng/ctrlsf.vim'
  """ Sort of FTP, with an editor
  Plug 'zenbro/mirror.vim'
  """ Syntax checker. Also checks for style guides
  Plug 'w0rp/ale'
  """ Async prettier
  Plug 'skywind3000/asyncrun.vim'
  """ tpope nailed it. 'A Git wrapper so awesome, it should be illegal'. Git from vim. That's it.
  Plug 'tpope/vim-fugitive'
  """ Comments done easily
  Plug 'tpope/vim-commentary'
  """ self explanatory name. multiple cursors on vim
  Plug 'terryma/vim-multiple-cursors'
  """ make hexadecimals and rgbs shine their color to the world
  Plug 'chrisbra/Colorizer'
  """ Show all your buffers. Neat if you have tabs problems, and splits ain't an option
  Plug 'taohex/lightline-buffer'
  """ Syntax for typescript
  Plug 'leafgarland/typescript-vim'
  """ Buffer clear without closing my split
  Plug 'qpkorr/vim-bufkill'
  """ Elm highlighting
  Plug 'elmcast/elm-vim'
  """ Oracle client
  """ Plug 'talek/vorax4'
  """ Vue Syntax highlight
  Plug 'posva/vim-vue'
  """ JS syntax highlight
  Plug 'pangloss/vim-javascript'
  """ JSX syntax highlight
  Plug 'mxw/vim-jsx'
  """ Go stuff :)
  Plug 'fatih/vim-go'
  """ Code completion
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  """ End plugin imports
call plug#end()

let g:deoplete#enable_at_startup = 1

""" Allows syntax highlighting
syntax on
""" Define vim to show 256 colors. For Terminator.
set t_Co=256
""" The colorscheme I'm using (and you, probably)
colors knuckleduster
""" the theme of the colorscheme
""" set background=dark

""" allow buffer switching without saving
set hidden 
" always show upper tabline
set showtabline=2  

" use lightline-buffer in lightline
let g:lightline = {
	\ 'tabline': {
		\ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
		\ 'right': [ [ 'close' ], ],
		\ },
	\ 'component_expand': {
		\ 'buffercurrent': 'lightline#buffer#buffercurrent2',
		\ },
	\ 'component_type': {
		\ 'buffercurrent': 'tabsel',
		\ },
	\ 'component_function': {
		\ 'bufferbefore': 'lightline#buffer#bufferbefore',
		\ 'bufferafter': 'lightline#buffer#bufferafter',
		\ 'bufferinfo': 'lightline#buffer#bufferinfo',
		\ },
	\ }
""" It's a good practice to limit the size of your lines. This shows it with a color of your liking
highlight ColorColumn ctermbg=8

""" You'll be amazed of how pissed you get after misspelling :w twice. 
"""This list saves you of some stress. 
"""It doesn't hurt to be less angry at the end of the day.
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

let g:colorizer_auto_filetype='css,html'

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
set path+=**

let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}

set rubydll=/home/mahezer/.rvm/rubies/ruby-2.4.0/lib/libruby.so.2.4

au BufRead *.sql
  \ set serveroutput on
  \ begin
  \    dbms_output.put_line('Test');
  \ end;

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
