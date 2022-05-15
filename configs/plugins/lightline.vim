let g:lightline = {
    \ 'colorscheme': 'dracula',
    \ 'active': {
    \   'right': [['lineinfo'], ['percent'], ['filetype']],
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['buffertext'] ]
    \ },
    \ 'component': {
    \   'buffertext': 'buffers'
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

let g:lightline.component_raw = {'buffers': 1}
let g:lightline#bufferline#min_buffer_count = 2
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#unnamed = '[No Name]'

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
