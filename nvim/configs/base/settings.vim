"*****************************************************************************
""  SET
"*****************************************************************************

syntax enable               " Syntax highlighting
set nocompatible            " Disable compatibility to old-time vi
set hidden                  " Required to keep multiple buffers open multiple buffers
set nowrap                  " Display long lines as just one line
set encoding=utf-8          " The encoding displayed
set fileencoding=utf-8      " The encoding written to file
set ruler                   " Show the cursor position all the time
set noshowmode              " Don't show mode status below statusline 
" set cursorline              " Highlight cursor line
set showmatch               " Show matching brackets
set ignorecase              " Case insensitive matching
set wildignorecase          " Ignore case when completing file names and directories
set hlsearch                " Highlight search results
set relativenumber          " Show the line number relative to the line with the cursor
set tabstop=4               " Number of columns occupied by a tab character
set softtabstop=4           " See multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4            " Change the number of space characters inserted for indentation
set expandtab               " Converts tabs to white space
set smartindent             " Makes indenting smart
set autoindent              " Indent a new line the same amount as the line just typed
set number                  " Add line numbers
set clipboard=unnamedplus   " Copy paste between vim and everything else
set noswapfile
set nobackup
set undodir=$HOME/.config/nvim/undodir
set undofile
set colorcolumn=80          " Set an 80 column border for good coding style
set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertical splits will automatically be to the right
set mouse=a                 " Enable mouse
set termguicolors           " Enables 24-bit RGB color 
set t_Co=256                " Support 256 colors
set iskeyword+=-            " Treat dash separated words as a word text object
set sessionoptions+=options,resize
set nofoldenable
filetype plugin indent on   " Allows auto-indenting depending on file type
