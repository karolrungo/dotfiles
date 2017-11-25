set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/grep.vim'
Plugin 'tpope/vim-commentary'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc' "vim-session dependency
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'
Plugin 'gabesoft/vim-ags'
Plugin 'easymotion/vim-easymotion'
Plugin 'mhinz/vim-startify'
Plugin 'vim-scripts/Mark--Karkat'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'Valloric/MatchTagAlways'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-syntastic/syntastic'
Plugin 'schickling/vim-bufonly'
Plugin 'qpkorr/vim-bufkill'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-scripts/mru.vim'
Plugin 'djoshea/vim-autoread'
Plugin 'morhetz/gruvbox'
Plugin 'Raimondi/delimitMate'
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
Plugin 'othree/yajs.vim', { 'for': 'javascript' }
Plugin 'a.vim'
Plugin 'posva/vim-vue'
Plugin 'Ioannis-Kapoulas/vim-autoprefixer'
Plugin 'gko/vim-coloresque'
Plugin 'lordm/vim-browser-reload-linux'
"Plugin 'mileszs/ack.vim'
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

"colorsheme
"colorscheme molokai_dark
colorscheme gruvbox
set background=dark    " Setting dark mode
syntax enable
set t_Co=256
set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8
set binary
set shell=bash
set nowrap          "do not wrap lines
set autoread        "autoreload file (works in GUI only)
set tabstop=4       "a tab is four spaces
set shiftwidth=4    "number of spaces to use for autoindenting
set softtabstop=4
set backspace=indent,eol,start "let backspace delete indent
set expandtab       " replace tab with spaces
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set showmatch       " set show matching parenthesis
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set history=1000    " remember more commands and search history
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup        " do not keep backup files
set noswapfile      " do not keep swp files
set list            " show whitespaces
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2> " F2 activates paste mode
set hidden          " unsaved buffers can be not active
set mouse=a
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set cursorline
set clipboard=unnamed,unnamedplus
set colorcolumn=120 " max line lenght
"set line under cursor in the middle of the screen
set scrolloff=0
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
set splitright
set splitbelow
"folding
set nofoldenable
set foldmethod=syntax
set foldlevel=10
set ruler
nmap <Space> za
"display relative line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
"mapping for splits
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l
"moving between buffers
map <C-j> :bprevious<CR>
map <C-k> :bnext<CR>
"annonymous clipboard
map <leader>a "_

"ctrlp configuration
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|lteDo$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=10
let g:ctrlp_clear_cache_on_exit = 0

"git-airline configuration
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline_theme='gruvbox'
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1

"multiple cursor configuration
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"NerdTREE configuration
map <F3> :NERDTreeToggle .<CR>

"vim-session configuration
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"create ctags command
command! Ctags execute "!ctags -R --tag-relative=yes --exclude={.git,lteDo,ECL,E_External,T_Tools,I_Interface} -f tags"

"tagbar configuration
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"startify configuration
let g:startify_session_dir = '~/.vim/sessions'

"easymotion configuration
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>s <Plug>(easymotion-overwin-f2)
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ada_remove_include_errors = 1
let g:syntastic_cpp_checkers=['']
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

"Ags configuration
let g:ags_winheight = 10

"blose configuration
let bclose_multiple = 0

"fix delimitMate and closeTag conflict
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php"
au FileType xml,html,phtml,php,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax

autocmd FileType vue syntax sync fromstart

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

"A.vim cofiguration
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../Include,sfr:../Source'

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab


" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" javascript
let g:javascript_enable_domhtmlcss = 1
