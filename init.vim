"*****************************************************************************
"" Base Configs
"*****************************************************************************

"" Plugins
source $HOME/.config/nvim/configs/base/plugins.vim

"" Settings
source $HOME/.config/nvim/configs/base/settings.vim

"" KeyMappings
source $HOME/.config/nvim/configs/base/keymappings.vim

"" ColorScheme
source $HOME/.config/nvim/configs/base/colorscheme.vim

"*****************************************************************************
"" Plugin Config
"*****************************************************************************

" Lightline
source $HOME/.config/nvim/configs/plugins/lightline.vim

" coc.nvim
source $HOME/.config/nvim/configs/plugins/coc.vim

" Telescope
source $HOME/.config/nvim/configs/plugins/telescope.vim

" Startify
source $HOME/.config/nvim/configs/plugins/startify.vim

" Nvim-Tree
source $HOME/.config/nvim/configs/plugins/nvimtree.vim

" ToggleTerm
" source $HOME/.config/nvim/configs/plugins/toggleterm.vim
" lua << EOF
" require("toggleterm").setup{
"     open_mapping = [[<leader>`]]
" }
" EOF

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" Vim-Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:tex_conceal = ''
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0

" Markdown-Preview 
let g:mkdp_auto_close = 0
let g:mkdp_browser = 'firefox'

" Indent-Blankline.nvim
let g:indent_blankline_char = '▏'
let g:indent_blankline_filetype_exclude = ['help']

" Nvim-Autopairs
lua require('nvim-autopairs').setup {}

" Nvim-Web-Devicons
lua << EOF
require'nvim-web-devicons'.setup {
    default = true;
}
EOF

" Colorizer
lua require('colorizer').setup()

" FZF
" let g:fzf_colors = {'border':   ['fg', 'DraculaPurple']}
" let g:fzf_history_dir = '~/.local/share/fzf-history'

" indentLine
" let g:indentLine_color_gui = '#3b3b5e'
" let g:indentLine_color_term = 60
" let g:indentLine_char = '▏'
" let g:indentLine_fileTypeExclude = ['dashboard']

" Floaterm
" hi FloatermBorder guifg='#bd93f9'
" let g:floaterm_title = '[$1|$2]' 
" let g:floaterm_borderchars = '─│─│╭╮╯╰'

" Get Files
" command! -bang -nargs=? -complete=dir Files
"     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep( \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)

"*****************************************************************************
"" SCRIPTs
"*****************************************************************************
source $HOME/.config/nvim/configs/scripts/GetBufferList.vim

"*****************************************************************************
"" AUTOCMDs
"*****************************************************************************

" auto source when writing to init.vim
autocmd! bufWritePost $MYVIMRC source % | echom "Reloaded $MYVIMRC" 

" Allows comments in json
autocmd FileType json syntax match Comment +\/\/.\+$+

autocmd FileType netrw setl bufhidden=wipe

autocmd BufEnter NvimTree set cursorline
autocmd BufEnter NvimTree hi NonText guifg = '#1e1f29'
