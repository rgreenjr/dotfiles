" use vim defaults
set nocompatible

" enable syntax highlighting and set theme
syntax on
set background=dark
colorscheme solarized

" turn on file type detection
filetype plugin indent on

" force encoding
set encoding=utf-8

" increase history line memory
set history=2000

" display line numbers, current position, and window title
set number
set ruler
set title

" ignore case when searching unless uppercase used
set ignorecase
set smartcase

" highlight search results and show incremental matches
set hlsearch
set incsearch

" use standard regex syntax
nnoremap / /\v
vnoremap / /\v

" clear search highlighting
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" show matching brackets for 200ms when cursor is over them
set showmatch
set matchtime=2

" turn backup off
set nobackup
set nowritebackup
set noswapfile

" show whitepsace characters
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround

" copy indent from current line when starting a new line
set autoindent
set smartindent

" show 3 screen lines above and below cursor
set scrolloff=3

" show incomplete commands
set showmode

" show current mode
set showcmd

" handle unsaved buffers better
set hidden

" enable command line enhancements
set wildmenu

" complete files like shell
set wildmode=list:longest

" no beeping
set visualbell

" highlight screen line of cursor
"set cursorline

set ttyfast
set backspace=indent,eol,start
set laststatus=2

" suppress splash screen text
set shortmess+=I


" make Vim handle long lines correctly
set wrap
" set textwidth=79
" set formatoptions=qrn1
"set colorcolumn=85

" strip trailing whitespace in current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" remove MacVim toolbar and set font
if has("gui_running")
  set guioptions-=T
  set guifont=Menlo:h12
endif

" Command-T Rails Shortcuts
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT spec/models<cr>
map <leader>gr :CommandTFlush<cr>\|:CommandT spec/requests<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
