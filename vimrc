set nocompatible                " use vim defaults

syntax on                       " enable syntax highlighting
set background=dark             " use dark background
colorscheme solarized           " https://github.com/altercation/vim-colors-solarized

filetype indent on              " turn on file type detection

set encoding=utf-8              " force encoding
set nobackup                    " disable automatic backup
set noswapfile                  " disable buffer swapfile
set hidden                      " handle unsaved buffers better

set showcmd                     " show incomplete commands
set number                      " show line numbers
set ruler                       " show current row and column
set title                       " show window title
set matchtime=2                 " show matching brackets for 200ms
set list                        " show whitepsace characters
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set hlsearch                    " highlight searches
set incsearch                   " enable incremental searching
set showmatch                   " jump to match when entering regex
set ignorecase                  " ignore case when searching
set smartcase                   " don't ignorecase if uppercase char present

set expandtab                   " use spaces instead of tabs
set shiftwidth=2                " set shift indent to 2 chars
set softtabstop=2               " tab equals two spaces when editing
set tabstop=2                   " tab equals two spaces when rendering
set autoindent                  " use indent from current line on new lines
set smartindent                 " use context to autoindent new lines
set wrap                        " make Vim handle long lines better
set backspace=indent,eol,start  " allow backspacing over these chars

set wildmenu                    " enable command line enhancements
set wildmode=list:longest       " complete files like shell
set history=2000                " increase history line memory
set showmode                    " show incomplete commands
set scrolloff=3                 " show 3 screen lines above and below cursor
set visualbell                  " no beeping
set cursorline                  " highlight screen line of cursor
set shortmess+=I                " suppress splash screen text
set ttyfast                     " assume fast connection

" use standard regex syntax
nnoremap / /\v
vnoremap / /\v

" remap 'jk' to <Esc>
:imap jk <Esc>

" strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" clear search highlighting
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

if has("gui_running")
  set guioptions-=T           " remove MacVim toolbar
  set guifont=Consolas:h13    " set MacVim font
endif
