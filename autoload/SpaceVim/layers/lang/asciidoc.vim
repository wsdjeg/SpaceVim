"=============================================================================
" asciidoc.vim --- lang#asciidoc layer
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


func! SpaceVim#layers#lang#asciidoc#plugins() abort

  return [
        \ ['wsdjeg/vim-asciidoc', {'merged' : 0}],
        \ ['dahu/VimRegStyle', {'merged' : 0}],
        \ ['dahu/vimple', {'merged' : 0}],
        \ ['dahu/Asif', {'merged' : 0}],
        \ ]

endf


function! SpaceVim#layers#lang#asciidoc#config() abort
  
endfunction
