set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive' "git commands
Plugin 'airblade/vim-gitgutter' "shows git hunks
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-misc' "vim-session dependency
Plugin 'xolox/vim-session'
Plugin 'majutsushi/tagbar'
Plugin 'gabesoft/vim-ags' "search tool
Plugin 'easymotion/vim-easymotion'
Plugin 'mhinz/vim-startify' "welcome screen
Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine' "shows indents in code
Plugin 'w0rp/ale'
Plugin 'schickling/vim-bufonly' "delete allbuffers except current
Plugin 'qpkorr/vim-bufkill' "keep split after buffer close
Plugin 'ryanoasis/vim-devicons'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'
Plugin 'prettier/vim-prettier'
Plugin 'tpope/vim-unimpaired'
"WebDev
Plugin 'Raimondi/delimitMate' "close quotes parentheisis brackets
Plugin 'alvan/vim-closetag' "close html tags
Plugin 'Valloric/MatchTagAlways' "match html tags
Plugin 'mattn/emmet-vim'
Plugin 'gko/vim-coloresque'
"C++
Plugin 'a.vim' "switch between source and header files
Plugin 'rhysd/vim-clang-format'
Plugin 'gustafj/vim-ttcn'

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

syntax enable
set t_Co=256
colorscheme gruvbox
set background=dark

set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8
set shell=bash
set nowrap          "do not wrap lines
set tabstop=2       "a tab is four spaces
set shiftwidth=2    "number of spaces to use for autoindenting
set softtabstop=2
set expandtab       " replace tab with spaces
set smarttab        " insert tabs on the start of a line according to shiftwidth, not tabstop
set backspace=indent,eol,start "let backspace delete indent
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set showmatch       " set show matching parenthesis
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
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
set colorcolumn=80 " max line lenght
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
set number
set modifiable

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

"annonymous clipboard
map <leader>a "_

if has('gui_running')
  set guifont=FiraCode\ 11
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
endif

"git-airline configuration
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1

"multiple cursor configuration
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" YouCompleteMe configuration
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
map <silent> gd :YcmCompleter GoToDeclaration<CR>
map <silent> gf :YcmCompleter GoToDefinition<CR>
map <C-i> :YcmCompleter FixIt<CR>

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

"NerdTREE configuration
map <F3> :NERDTreeToggle <CR>
let NERDTreeShowHidden=1

"vim-session configuration
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"create ctags command
command! Ctags execute "!ctags -R --tag-relative=yes --exclude={.git,lteDo,ECL,E_External,T_Tools,I_Interface,node_modules} -f tags"

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

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title

"Ags configuration
let g:ags_winheight = 10

"blose configuration
let bclose_multiple = 0

"fix delimitMate and closeTag conflict
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx"
au FileType xml,html,phtml,php,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"A.vim cofiguration
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../Include,sfr:../Source'

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

" javascript
let g:javascript_enable_domhtmlcss = 1

"vim polyglot graphQL bug fix
let g:polyglot_disabled = ['graphql']

"nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
