set nocompatible                  " use vim behaviors, not vi

""" Vundle
filetype off                      " turn off file type detection
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path to include Vundle
call vundle#begin()               " start Vundle setup
Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()                 " end Vundle setup
filetype plugin indent on         " auto detect file types

set encoding=utf-8                " use utf-8 encoding
set nobackup                      " don't backup
set nowritebackup                 " write files in place
set noswapfile                    " don't use swap files (.swp)
set autoread                      " autoreload buffers
set autowrite                     " save changes before switching buffers

syntax on                         " enable syntax highlighting
set background=dark               " use dark background
colorscheme solarized             " use solarized color scheme

set laststatus=2                  " always show status line
set showcmd                       " show incomplete commands
set number                        " show line numbers
set ruler                         " show cursor postion
set title                         " show window title
set cursorline                    " highlight screen line of cursor
set colorcolumn=100               " highlight column
set matchtime=2                   " show matching brackets for 200ms

set hlsearch                      " highlight searches
set incsearch                     " enable incremental searching
set showmatch                     " jump to match when entering regex
set ignorecase                    " ignore char case when searching
set smartcase                     " unless uppercase char present

set expandtab                     " expand tabs to spaces
set shiftwidth=2                  " reindent with 2 spaces (using <<)
set softtabstop=2                 " tab equals two spaces when editing
set tabstop=2                     " tabs are always 2 spaces
set autoindent                    " use indent from current line on new lines
set smartindent                   " use context to autoindent new lines
set backspace=indent,eol,start    " allow backspacing over everything
set list                          " show whitepsace characters
set lcs=tab:».,trail:.,nbsp:.     " display whitespace characters as '.'

set wildmenu                      " enable command line enhancements
set wildmode=list:longest         " complete files like shell
set history=2000                  " increase history line memory
set showmode                      " show incomplete commands
set scrolloff=3                   " show 3 screen lines above and below cursor
set visualbell                    " no beeping
set shortmess+=I                  " suppress splash screen text
set ttyfast                       " assume fast connection

if has("gui_running")
  set guioptions-=T               " remove MacVim toolbar
  set guifont=Consolas:h13        " set MacVim font
endif

" use standard regex syntax
nnoremap / /\v
vnoremap / /\v

" remap 'jk' to <Esc>
:imap jk <Esc>

" remap leader to space
let mapleader = " "

" strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" clear search highlighting
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

set secure                        " disable commands in unowned vimrc files

