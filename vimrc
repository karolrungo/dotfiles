set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'tpope/vim-sleuth'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/DoxygenToolkit.vim'
"Plugin 'fatih/vim-go'
"Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NERDTree configuration
autocmd vimenter * NERDTree
map <F4> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'

"CtrlPConfiguration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode ='ra'
let g:ctrlp_regexp = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

"airline configuration'
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1
let g:airline_theme='murmur'
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly

:set mouse=a
:set number
:set nowrap
syntax enable
colorscheme stereokai
set colorcolumn=120
set directory=~/.vim/backup
set backupdir=~/.vim/backup   " keep swap files here
set fillchars+=stl:\ ,stlnc:\
set tabstop=4

map <C-Down> :bprevious<CR>
map <C-Up> :bnext<CR>

"functions for saving actual vim session
function! MakeSession()
	let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
	if (filewritable(b:sessiondir) != 2)
		exe 'silent !mkdir -p ' b:sessiondir
		redraw!
	endif
		let b:filename = b:sessiondir . '/session.vim'
		exe "mksession! " . b:filename
endfunction

function! LoadSession()
	let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
	let b:sessionfile = b:sessiondir . "/session.vim"
	if (filereadable(b:sessionfile))
		exe 'source ' b:sessionfile
	else
		echo "No session loaded."
endif
endfunction

au VimEnter * nested :call LoadSession()
au VimLeave * :call MakeSession()
