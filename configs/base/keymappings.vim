"*****************************************************************************
""  KeyMappings
"*****************************************************************************

let mapleader = " " 

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize +2<CR>
nnoremap <M-k> :resize -2<CR>
nnoremap <M-h> :vertical resize +2<CR>
nnoremap <M-l> :vertical resize -2<CR>

" I hate Escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
"" nnoremap <C-Q> :q<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
 
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Map d to black hole register
nnoremap d "_d
vnoremap d "_d

"Map c to black hole register
nnoremap c "_c
vnoremap c "_c

"Map s to black hole register
nnoremap s "_s
vnoremap s "_s

" Replace the Current word with the last yanked text
nnoremap S "_diwP
vnoremap S "_dP

" Unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Deletes current buffer and tab if no more buffers left 
nnoremap <expr> <Leader>w len(getbufinfo({'buflisted':1})) > 1 ? ":bd<CR>" 
            \: ":echo 'Last Buffer'<CR>" 

" Jump to next underlined identifier in Vim help files
nnoremap ]i :call search('\v\\|.{-}\\|')<CR>

" Toggle Relative line numbers
nnoremap <Leader>nr :set relativenumber!<CR>

" Terminal Normal mode
tnoremap <silent><Leader>jk <C-\><C-n>
tnoremap <silent><Leader>kj <C-\><C-n>

" Handle Global Quickfix lists
nnoremap <silent> <Leader>cl :call ToggleList("Quickfix List", 'c')<CR>
nnoremap <A-c> :cnext<CR>
nnoremap <A-C> :cprev<CR>

" Handle Local Quickfix lists
nmap <silent> <Leader>ll :call ToggleList("Location List", 'l')<CR>
nnoremap <A-v> :lnext<CR>
nnoremap <A-V> :lprev<CR>

" Folding
nnoremap <Leader>zi :setlocal foldmethod=indent<CR>
nnoremap <Leader>zs :setlocal foldmethod=syntax<CR>

" Toggle Wrap 
nnoremap <Leader>tw :setlocal nowrap!<CR>

" Set working directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>

" Nvim-Tree --------------------------------------------------------------
nnoremap <silent> <C-n> :NvimTreeToggle<CR>

" nnn -------------------------------------------------------------------
" Start n³
nnoremap <silent> <leader>n :NnnPicker<CR>
" Start n³ in the current file's directory
nnoremap <leader>nn :NnnPicker %:p:h<CR>

" Floaterm --------------------------------------------------------------
"nnoremap <silent> <Leader>` :FloatermToggle<CR>
"tnoremap <silent> <Leader>` <C-\><C-n>:FloatermToggle<CR>

" Prettier --------------------------------------------------------------
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Telescope -------------------------------------------------------------
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
 
" UndoTree --------------------------------------------------------------
nnoremap <Leader>ut :UndotreeToggle<CR>

"-------------------------------------------------------------------------
" CoC 
"-------------------------------------------------------------------------

" User-Defined ------------

" Peek Definition 
nnoremap <silent><nowait> <space>d :call CocAction('jumpDefinition', v:false)<CR>

" Defaults ----------------

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
"nnoremap ]i :call search('\v\\|.{-}\\|')<CR> Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" -----------------------------------------------------------------
