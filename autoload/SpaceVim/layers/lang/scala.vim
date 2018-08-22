"=============================================================================
" scala.vim --- SpaceVim lang#scala layer
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

""
" @section lang#scala, layer-lang-scala
" @parentsection layers

function! SpaceVim#layers#lang#scala#plugins() abort
    let plugins = []
    " scala
    call add(plugins, ['derekwyatt/vim-scala',                    { 'on_ft' : 'scala'}])
    return plugins
endfunction

function! SpaceVim#layers#lang#scala#config() abort
  let g:scala_use_default_keymappings = 0
endfunction
