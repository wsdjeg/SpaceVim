let s:JOB = SpaceVim#api#import('job')
let s:matched_lines = []

function! SpaceVim#plugins#foldsearch#word(word)
  let argv = ['rg', '--line-number', a:word]
  let s:matched_lines = []
  let jobid = s:JOB.start(argv, {
        \ 'on_stdout' : function('s:std_out'),
        \ 'on_exit' : function('s:exit'),
        \ })

  call s:JOB.send(jobid, call('getline', [1, '$']))
  call s:JOB.chanclose(jobid, 'stdin')
endfunction


function! s:std_out(id, data, event) abort
  for line in filter(a:data, '!empty(v:val)')
    call add(s:matched_lines, str2nr(matchstr(line, '^\d\+')))
  endfor

endfunction

function! s:exit(id, data, event) abort
  echom string(s:matched_lines)
  let start_line = 1
  let end_line = 1
  for nr in s:matched_lines
    if nr == end_line && end_line > 1
      " fold start_line to end_line -1
      exe start_line . ',' . end_line . ':fold'
      let start_line = nr
    else
      let end_line = nr
    endif
  endfor
endfunction
