
" install plugin 
call plug#begin('~/.vim/plugged')
	Plug 'vim-scripts/indentpython.vim'
	Plug 'Valloric/YouCompleteMe'
	Plug 'vim-syntastic/syntastic'
	Plug 'nvie/vim-flake8'
	Plug 'jnurmine/Zenburn'
	Plug 'altercation/vim-colors-solarized'
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
	Plug 'tmhedberg/SimpylFold'
	Plug 'frazrepo/vim-rainbow'
	Plug 'airblade/vim-gitgutter'
	Plug 'codota/tabnine-vim'
	Plug 'dense-analysis/ale'
    Plug 'psf/black'
    Plug 'sickill/vim-monokai'
call plug#end()

set encoding=utf-8
set number
set incsearch
set hlsearch
set ignorecase
set smartcase
set termbidi
set clipboard=unnamed
set splitbelow
set splitright
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
syntax enable
set directory=/home/kami/.vim/swapfiles//
autocmd TextChanged,TextChangedI * update
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:iCursor 

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" show a visual line under the cursor's current line
set cursorline


" show the matching part of the pair for [] {} and ()
set showmatch
colorscheme monokai

syntax on



" python pep------------------------------------------------------------------------
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

python3 << EOF
import os
import sys
import subprocess
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate')
  subprocess.Popen([f'source {activate_this}', ],shell=True)

EOF
" -----------------------------------------------------------------------------------

