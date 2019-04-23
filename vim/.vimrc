"
"     ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"    ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"     ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"      ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"       ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"       ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"       ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"         ░░   ▒ ░░      ░     ░░   ░ ░        
"          ░   ░         ░      ░     ░ ░      
"         ░                           ░        


set ft=nasm
" set mouse=a
set relativenumber
"" Bell
set noerrorbells
set visualbell
set autowrite
execute pathogen#infect()
syntax on
filetype plugin indent on



" Show line numbers
set number
" Set color scheme. Other good ones are bubblegum-256-dark, sorcerer, and zenburn
set t_Co=256

colorscheme mustang
set background=dark
"colorscheme kuroi


" keyboard shortcuts
let mapleader = ','
noremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
noremap <leader>p :CtrlP<CR>
noremap <leader>P :CtrlPClearCache<CR>:CtrlP<CR>
noremap <silent> <leader>r :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
"
" Switch buffers using ctrl+left or ctrl+right
map <C-left> <ESC>:bn<CR>
map <C-right> <ESC>:bp<CR>
map <C-n> :NERDTreeToggle<CR>

" Move between windows easily
noremap <leader><up> :wincmd k<CR>
noremap <leader><down> :wincmd j<CR>
noremap <leader><left> :wincmd h<CR>
noremap <leader><right> :wincmd l<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>h :wincmd h<CR>
noremap <leader>l :wincmd l<CR>

" Switch buffers using F5
nnoremap <F5> :buffers<CR>:buffer<Space>

" Set keyboard shortcut for paste toggle.
set pastetoggle=<F10>

map <F12> :call TrimWhiteSpace()<CR>
" Removes trailing spaces
func! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

" Clear search highlight with c-l
noremap <silent> <c-l> :nohls<cr><c-l>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

let c_space_errors = 1

" Fix tmux background color
if &term =~ '256color'
    set t_ut=
endif


" Enable filetype plugins
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Turn backup off
set nobackup
set nowb
set noswapfile

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

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Return to the last edit position when opening files.
augroup vimrcEx
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

" Ensure cursor is at the top of the file, if editing a git commit message:
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" Remember info about open buffers on close
set viminfo^=%

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Delete trailing white space on save, useful for (Python)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" Set the cursorline
" set cursorline

" Enhanced vim tweaks
silent! source ~/.vimrc-extra

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Airline
"
let g:airline_theme='kolor'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline_theme='minimalist'
"let g:airline_theme='jellybeans'

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
