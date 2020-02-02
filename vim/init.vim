
"  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
" ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
" ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
"    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
"          ░    ░  ░    ░ ░        ░   ░         ░
"                                 ░
"
"
" ============= Vim-Plug ============== "
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
let g:vim_bootstrap_langs = "c,erlang,go"
let g:vim_bootstrap_editor = "nvim"

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Must run command :PlugInstall
" Other commands :PlugClean to
" remove plugs, :PlugUpdate to
" well... update. Duh!

call plug#begin('~/.vim/plugged')
Plug 'ryanoasis/vim-devicons'				" pretty icons everywhere
Plug 'hzchirs/vim-material'				" material color themes
"Plug 'jschmold/sweet-dark.vim'			" sweet dark color themes
Plug 'junegunn/goyo.vim'				" Zen mode
Plug 'gregsexton/MatchTag'				" highlight matching html tags
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-fugitive'				" git support
Plug 'neoclide/coc.nvim', {'branch': 'release'}	" auto completion, Lang servers ...
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'				" fuzzy search integration
Plug 'farmergreg/vim-lastplace'
Plug 'mhinz/vim-startify'				" cool start up screen
Plug '907th/vim-auto-save'				" auto save changes
Plug 'tpope/vim-commentary'				" better commenting
Plug 'tpope/vim-sensible'				" sensible defaults
Plug 'Yggdroot/indentLine'				" show indentation lines
Plug 'justmao945/vim-clang'
Plug 'psliwka/vim-smoothie'                           " some very smooth ass scrolling
Plug 'herringtondarkholme/yats.vim'			" Typescript highlighting
call plug#end()

"Coloring
let g:material_style='oceanic'
"set background=dark
"colorscheme vim-material 	"" WARNING: This fucks up syntax highlighting on html files
let g:airline_theme='material'

highlight Comment gui=bold                              " bold comments
highlight Normal gui=none
highlight NonText guibg=none
highlight clear SignColumn                              " use number color for sign column color
hi Search guibg=orange 
let g:yats_host_keyword = 1
" Colors for git (especially the gutter)
hi DiffAdd guibg='#0f111a'
hi DiffChange guibg='#0f111a'

" Show line numbers
:set number
"" Bell
set noerrorbells
set visualbell
set autowrite
set autoindent
set showtabline=2

" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set synmaxcol=180
set re=1

" Trim whitespace with mapping
map <F12> :call TrimWhiteSpace()<CR>
func! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

" Clear search highlight with c-l
noremap <silent> <c-l> :nohls<cr><c-l>

" Braces completion
inoremap {<Enter> {<Enter><Enter>}<Up><Tab>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Alt + arrow keys to move line up or down
:map <Alt><Up> dd <Down>p

" Enable syntax highlighting
syntax on
" Enable auto-indent
set ai
set si

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" Ignore case while searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
syntax sync fromstart
" Set the cursorline
" set cursorline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" RUST development environment settings
let g:ale_fixers = {
        \'rust': ['rustfmt'],
	\'c' : ['clang-format'],
	\'*': ['remove_trailing_lines', 'trim_whitespace'],
        \'javascript': ['prettier'],
        \'cpp' : ['clang-format'],
        \'css' : ['prettier'],
        \'html' : ['prettier'],
        \'markdown' : ['prettier'],
        \'yaml': ['prettier'],
        \'json': ['prettier'],
        \}

let g:ale_linters = {
      \'rust': ['rls'],
      \}

let g:ale_rust_rls_toolchain = 'nightly-YYYY-MM-DD'

let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
set runtimepath+=~/.vim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {'rust': ['ale', 'racer']}

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1

" Airline color theme
"let g:airline_theme='jellybeans'
let g:airline_theme='material'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

