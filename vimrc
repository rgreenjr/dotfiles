" use vim defaults
set nocompatible

" enable syntax highlighting and set theme
syntax on
color molokai

" turn on file type detection
filetype plugin indent on

" force encoding
set encoding=utf-8

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

" show matching brackets for 200ms when cursor is over them
set showmatch
set mat=2

" turn backup off
set nobackup
set nowritebackup

" use appropriate number of spaces instead of tab
set expandtab
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" copy indent from current line when starting a new line
set autoindent
set smartindent

" show 3 screen lines above and below cursor
set scrolloff=3

" show incomplete commands
set showmode

" show current mode
set showcmd

" handle multiple buffer better
set hidden

" enable command line enhancements
set wildmenu

" complete files like shell
set wildmode=list:longest

" no beeping
set visualbell

" highlight screen line of cursor
set cursorline

set ttyfast
set backspace=indent,eol,start
set laststatus=2

" use standard regex syntax
nnoremap / /\v
vnoremap / /\v

" make :substitute flag 'g' on by default
set gdefault

" clear search highlighting
nnoremap <leader><space> :noh<cr>

" nnoremap <tab> %
" vnoremap <tab> %

" make Vim handle long lines correctly
set wrap
" set textwidth=79
" set formatoptions=qrn1
"set colorcolumn=85

" strip trailing whitespace in current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" remove MacVim toolbar and set font
if has("gui_running")
  set guioptions-=T
  set guifont=Menlo:h12
endif

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Tab mappings.
" map <leader>tt :tabnew<cr>
" map <leader>te :tabedit
" map <leader>tc :tabclose<cr>
" map <leader>to :tabonly<cr>
" map <leader>tn :tabnext<cr>
" map <leader>tp :tabprevious<cr>
" map <leader>tf :tabfirst<cr>
" map <leader>tl :tablast<cr>
" map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

