let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_enable_special = 0
let g:startify_lists = [
\ { 'type': 'files',     'header': ['   Files']            },
\ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ ]
let g:startify_bookmarks = [
            \ { 'c': '~/CODE/Compete_Code/temp.py' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/CODE/Compete_Code',
            \ ]
let g:startify_files_number = 7
