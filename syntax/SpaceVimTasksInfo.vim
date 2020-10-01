if exists('b:current_syntax') && b:current_syntax ==# 'SpaceVimTasksInfo'
  finish
endif
let b:current_syntax = 'SpaceVimTodoManager'
syntax case ignore

syn match TaskName /^\[.*\]/
syn match TaskType  /^\[.*\] \zs[a-z]*/
syn match TaskDescription  /^\[.*\] \zs[a-z]*/
hi def link TaskName Title
hi def link TaskType Todo
hi def link TaskDescription Comment


