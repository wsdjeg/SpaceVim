"=============================================================================
" todo.vim --- todo manager for SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

function! SpaceVim#dev#todo#list() abort
  call s:open_win()
endfunction

let s:JOB = SpaceVim#api#import('job')

let s:bufnr = 0

function! s:open_win() abort
  if s:bufnr != 0 && bufexists(s:bufnr)
    exe 'bd ' . s:bufnr
  endif
  botright split __todo_manager__
  let lines = &lines * 30 / 100
  exe 'resize ' . lines
  setlocal buftype=nofile bufhidden=wipe nobuflisted nolist noswapfile nowrap cursorline nospell nonu norelativenumber winfixheight
  set filetype=SpaceVimTodoManager
  let s:bufnr = bufnr('%')
  call s:update_todo_content()
  nnoremap <buffer><silent> <Enter> :call <SID>open_todo()<cr>
endfunction

function! s:update_todo_content() abort
  let s:todos = []
  let argv = ['rg', '--hidden', '--no-heading', '--color=never', '--with-filename', '--line-number', '--column',
      \ '-g', '!.git','@t'. 'odo ']
  call s:JOB.start(argv, {
        \ 'on_stdout' : function('s:stdout'),
        \ 'on_exit' : function('s:exit'),
        \ })
endfunction

function! s:stdout(id, data, event) abort
  for data in a:data
    if !empty(data)
      let file = fnameescape(split(data, ':\d\+:')[0])
      let line = matchstr(data, ':\d\+:')[1:-2]
      let column = matchstr(data, '\(:\d\+\)\@<=:\d\+:')[1:-2]
      let title = split(data, '@todo')[1]
      call add(s:todos, 
            \ {
            \ 'file' : file,
            \ 'line' : line,
            \ 'column' : column,
            \ 'title' : title,
            \ }
            \ )
    endif
  endfor
endfunction

function! s:exit(id, data, event ) abort
  let g:lines = map(deepcopy(s:todos), "v:val.file . '   ' . v:val.title")
  call setline(1, g:lines)
endfunction


function! s:open_todo() abort
  let todo = s:todos[line('.') - 1]
  try
    close
  catch
  endtry
  exe 'e ' . todo.file
  call cursor(todo.line, todo.column)
  noautocmd normal! :
endfunction

" @todo fuzzy find todo list
" after open todo manager buffer, we should be able to fuzzy find the item we
" need.
