scriptencoding utf-8
let g:Lf_StlSeparator = get(g:, 'Lf_StlSeparator', { 'left': '', 'right': '' })
let g:Lf_StlColorscheme = g:spacevim_colorscheme
" disable default mru
"
augroup LeaderF_Mru
  autocmd!
augroup END

let g:Lf_PreviewResult = {
      \ 'File': 0,
      \ 'Buffer': 0,
      \ 'Mru': 0,
      \ 'Tag': 0,
      \ 'BufTag': 0,
      \ 'Function': 0,
      \ 'Line': 0,
      \ 'Colorscheme': 0
      \}

let g:Lf_CommandMap = {'<C-J>': ['<Tab>'], '<C-K>': ['<S-Tab>']}
