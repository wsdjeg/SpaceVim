"=============================================================================
" denite.vim --- SpaceVim denite layer
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

function! SpaceVim#layers#denite#plugins() abort
  let plugins = [
        \ ['Shougo/denite.nvim',{ 'merged' : 0, 'loadconf' : 1}],
        \ ['pocari/vim-denite-emoji', {'merged' : 0}],
        \ ]

  " neoyark source <Leader>fh
  call add(plugins, ['Shougo/neoyank.vim', {'merged' : 0}])
  return plugins
endfunction

function! SpaceVim#layers#denite#config() abort
  call SpaceVim#mapping#space#def('nnoremap', ['j', 'i'], 'Denite outline', 'jump to a definition in buffer', 1)
  nnoremap <silent> <C-p> :Denite file_rec<cr>
  call SpaceVim#mapping#space#def('nnoremap', ['T', 's'], 'Denite colorscheme', 'fuzzy find colorschemes', 1)
  let g:_spacevim_mappings.f = {'name' : '+Fuzzy Finder'}
  call s:defind_fuzzy_finder()
endfunction

let s:file = expand('<sfile>:~')
let s:unite_lnum = expand('<slnum>') + 3
function! s:defind_fuzzy_finder() abort
  nnoremap <silent> <Leader>fr
        \ :<C-u>Denite -buffer-name=resume resume<CR>
  let lnum = expand('<slnum>') + s:unite_lnum - 4
  let g:_spacevim_mappings.f.r = ['Denite -buffer-name=resume resume',
        \ 'resume unite window',
        \ [
        \ '[Leader f r ] is to resume unite window',
        \ '',
        \ 'Definition: ' . s:file . ':' . lnum,
        \ ]
        \ ]
  nnoremap <silent> <Leader>fe
        \ :<C-u>Denite register<CR>
  let lnum = expand('<slnum>') + s:unite_lnum - 4
  let g:_spacevim_mappings.f.r = ['Denite register',
        \ 'fuzzy find registers',
        \ [
        \ '[Leader f r ] is to resume unite window',
        \ '',
        \ 'Definition: ' . s:file . ':' . lnum,
        \ ]
        \ ]
  nnoremap <silent> <Leader>fh
        \ :<C-u>Denite neoyank<CR>
  let lnum = expand('<slnum>') + s:unite_lnum - 4
  let g:_spacevim_mappings.f.h = ['Denite neoyank',
        \ 'fuzzy find yank history',
        \ [
        \ '[Leader f h] is to fuzzy find history and yank content',
        \ '',
        \ 'Definition: ' . s:file . ':' . lnum,
        \ ]
        \ ]
endfunction
" vim:set et sw=2 cc=80:
