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
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-misc' "vim-session dependency
Plugin 'xolox/vim-session'
Plugin 'majutsushi/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'mhinz/vim-startify' "welcome screen
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine' "shows indents in code
Plugin 'schickling/vim-bufonly' "delete allbuffers except current
Plugin 'qpkorr/vim-bufkill' "keep split after buffer close
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-expand-region'
Plugin 'ludovicchabant/vim-gutentags'
"WebDev
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

let mapleader = ','

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
set nowritebackup
set noswapfile      " do not keep swp files
set list            " show whitespaces
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2> " F2 activates paste mode
set hidden          " unsaved buffers can be not active
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set cursorline
set clipboard=unnamed,unnamedplus
set colorcolumn=80 " max line lenght
set scrolloff=0
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
set autoread

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

"fzf
nmap ; :Buffers<CR>
nmap <Leader>t :GFiles<CR>

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

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

"NerdTREE configuration
map <F3> :NERDTreeToggle <CR>
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeShowHidden=1

"vim-session configuration
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"tagbar configuration
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"startify configuration
let g:startify_session_dir = '~/.vim/sessions'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>v <Plug>CtrlSFVwordPath
nmap     <C-F>w <Plug>CtrlSFCwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '10'
let g:ctrlsf_extra_backend_args = {
    \ 'ag': "--ignore package-lock.json --ignore yarn.lock --ignore node_modules"
    \ }

"blose configuration
let bclose_multiple = 0

"fix delimitMate and closeTag conflict
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx"
au FileType xml,html,phtml,php,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

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

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

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

" set cmdheight=2
" set shortmess+=c
" set signcolumn=yes
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)``

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" coc config
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-tslint',
  \ 'coc-eslint',
  \ 'coc-angular',
  \ 'coc-jest',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-stylelint',
  \ 'coc-stylelintplus',
  \ 'coc-emmet',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-xml',
  \ 'coc-pairs',
  \ 'coc-webpack',
  \ 'coc-docker',
  \ 'coc-ccls',
  \ 'coc-marketplace'
  \ ]
