" vim-plug
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Installed packages
"*****************************************************************************

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Status/Tabline
Plug 'itchyny/lightline.vim'

" Bufferline
Plug 'mengelbrecht/lightline-bufferline'

" Changes the working directory to the project root when you open a file or directory
Plug 'airblade/vim-rooter'

" Conquerer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Find, Filter, Preview, Pick
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Code Folding
Plug 'tmhedberg/SimpylFold'

" Start Screen
Plug 'mhinz/vim-startify'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter'

" Indentation visual cue
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'Yggdroot/indentLine'

" nnn file manager
Plug 'mcchrish/nnn.vim'

" File explorer sidebar
" Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'

" Align regions of text that match a pattern.
Plug 'godlygeek/tabular'

" <Autopairs>
Plug 'windwp/nvim-autopairs'

" Cooment
Plug 'preservim/nerdcommenter'

" GIT 
Plug 'tpope/vim-fugitive'

" netrw-gx extended
Plug 'stsewd/gx-extended.vim'

" TEXT-OBJECTS ---------

" Additional Text objects
Plug 'wellle/targets.vim'

" Indent text object
Plug 'michaeljsmith/vim-indent-object'

" ----------------------

" Delete, change and add surroundings i.e. parentheses, brackets, tags, etc
Plug 'tpope/vim-surround'

" Enable repeating for vim-surround
Plug 'tpope/vim-repeat'

" Undo visualizer
Plug 'mbbill/undotree'

" Toggle Terminal
" Plug 'akinsho/toggleterm.nvim'
"Plug 'vimlab/split-term.vim'

" Session management
" Plug 'tpope/vim-obsession'

" Markdown
Plug 'plasticboy/vim-markdown'	
Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode'

" Color Highlighter 
Plug 'norcalli/nvim-colorizer.lua'

" Convert color formats
Plug 'amadeus/vim-convert-color-to'

" Devicons
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' 

" Keybindings quick peek
" Plug 'folke/which-key.nvim'

""*****************************************************************************
call plug#end()


