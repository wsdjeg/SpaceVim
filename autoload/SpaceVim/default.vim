"=============================================================================
" default.vim --- default options in SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

scriptencoding utf-8

let s:SYSTEM = SpaceVim#api#import('system')

" Default options {{{
function! SpaceVim#default#options() abort

  set foldtext=SpaceVim#default#Customfoldtext()

endfunction
"}}}

function! SpaceVim#default#layers() abort
  call SpaceVim#layers#load('default')
  call SpaceVim#layers#load('ui')
  call SpaceVim#layers#load('edit')
  call SpaceVim#layers#load('core')
  call SpaceVim#layers#load('core#banner')
  call SpaceVim#layers#load('core#statusline')
  call SpaceVim#layers#load('core#tabline')
endfunction

function! SpaceVim#default#keyBindings() abort
  if g:spacevim_enable_insert_leader
    inoremap <silent> <Leader><Tab> <C-r>=MyLeaderTabfunc()<CR>
  endif



  " Location list movement
  let g:_spacevim_mappings.l = {'name' : '+Location movement'}
  call SpaceVim#mapping#def('nnoremap', '<Leader>lj', ':lnext<CR>',
        \ 'Jump to next location list position',
        \ 'lnext',
        \ 'Next location list')
  call SpaceVim#mapping#def('nnoremap', '<Leader>lk', ':lprev<CR>',
        \ 'Jump to previous location list position',
        \ 'lprev',
        \ 'Previous location list')
  call SpaceVim#mapping#def('nnoremap', '<Leader>lq', ':lclose<CR>',
        \ 'Close the window showing the location list',
        \ 'lclose',
        \ 'Close location list window')

  " quickfix list movement
  let g:_spacevim_mappings.q = {'name' : '+Quickfix movement'}
  call SpaceVim#mapping#def('nnoremap', '<Leader>qj', ':cnext<CR>',
        \ 'Jump to next quickfix list position',
        \ 'cnext',
        \ 'Next quickfix list')
  call SpaceVim#mapping#def('nnoremap', '<Leader>qk', ':cprev<CR>',
        \ 'Jump to previous quickfix list position',
        \ 'cprev',
        \ 'Previous quickfix list')
  call SpaceVim#mapping#def('nnoremap', '<Leader>qq', ':cclose<CR>',
        \ 'Close quickfix list window',
        \ 'cclose',
        \ 'Close quickfix list window')
  call SpaceVim#mapping#def('nnoremap <silent>', '<Leader>qr', 'q',
        \ 'Toggle recording',
        \ '',
        \ 'Toggle recording mode')

  " Use Ctrl+* to jump between windows
  nnoremap <silent><C-Right> :<C-u>wincmd l<CR>
  nnoremap <silent><C-Left>  :<C-u>wincmd h<CR>
  nnoremap <silent><C-Up>    :<C-u>wincmd k<CR>
  nnoremap <silent><C-Down>  :<C-u>wincmd j<CR>


  "Use jk switch to normal mode
  inoremap jk <esc>

  "]<End> or ]<Home> move current line to the end or the begin of current buffer
  nnoremap <silent>]<End> ddGp``
  nnoremap <silent>]<Home> ddggP``
  vnoremap <silent>]<End> dGp``
  vnoremap <silent>]<Home> dggP``


  "Ctrl+Shift+Up/Down to move up and down
  nnoremap <silent><C-S-Down> :m .+1<CR>==
  nnoremap <silent><C-S-Up> :m .-2<CR>==
  inoremap <silent><C-S-Down> <Esc>:m .+1<CR>==gi
  inoremap <silent><C-S-Up> <Esc>:m .-2<CR>==gi
  vnoremap <silent><C-S-Down> :m '>+1<CR>gv=gv
  vnoremap <silent><C-S-Up> :m '<-2<CR>gv=gv
  " download gvimfullscreen.dll from github, copy gvimfullscreen.dll to
  " the directory that has gvim.exe
  nnoremap <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<cr>

  " Start new line
  inoremap <S-Return> <C-o>o

  " Improve scroll, credits: https://github.com/Shougo
  nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
        \ 'zt' : (winline() == &scrolloff + 1) ? 'zb' : 'zz'
  noremap <expr> <C-f> max([winheight(0) - 2, 1])
        \ ."\<C-d>".(line('w$') >= line('$') ? "L" : "H")
  noremap <expr> <C-b> max([winheight(0) - 2, 1])
        \ ."\<C-u>".(line('w0') <= 1 ? "H" : "L")
  noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
  noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")

  " Select blocks after indenting
  xnoremap < <gv
  xnoremap > >gv|

  " Use tab for indenting in visual mode
  xnoremap <Tab> >gv|
  xnoremap <S-Tab> <gv
  nnoremap > >>_
  nnoremap < <<_

  " smart up and down
  nnoremap <silent><Down> gj
  nnoremap <silent><Up> gk

  " Navigate window
  nnoremap <silent><C-q> <C-w>



  " Fast saving
  nnoremap <C-s> :<C-u>w<CR>
  vnoremap <C-s> :<C-u>w<CR>
  cnoremap <C-s> <C-u>w<CR>

  " Tabs
  nnoremap <silent>g0 :<C-u>tabfirst<CR>
  nnoremap <silent>g$ :<C-u>tablast<CR>
  nnoremap <silent>gr :<C-u>tabprevious<CR>

  " Remove spaces at the end of lines
  nnoremap <silent> ,<Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

  " C-r: Easier search and replace
  xnoremap <C-r> :<C-u>call <SID>VSetSearch()<CR>:,$s/<C-R>=@/<CR>//gc<left><left><left>
  function! s:VSetSearch() abort
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
  endfunction

  "irssi like hot key
  nnoremap <silent><M-1> :<C-u>call <SID>tobur(1)<CR>
  nnoremap <silent><M-2> :<C-u>call <SID>tobur(2)<CR>
  nnoremap <silent><M-3> :<C-u>call <SID>tobur(3)<CR>
  nnoremap <silent><M-4> :<C-u>call <SID>tobur(4)<CR>
  nnoremap <silent><M-5> :<C-u>call <SID>tobur(5)<CR>
  nnoremap <silent><M-Right> :<C-U>call <SID>tobur("next")<CR>
  nnoremap <silent><M-Left> :<C-U>call <SID>tobur("prev")<CR>

  call SpaceVim#mapping#def('nnoremap <silent>','<M-x>',':call chat#qq#OpenMsgWin()<cr>',
        \ 'Open qq chatting room','call chat#chatting#OpenMsgWin()')
  call SpaceVim#mapping#def('nnoremap <silent>','<M-w>',':call chat#weixin#OpenMsgWin()<cr>',
        \ 'Open weixin chatting room','call chat#chatting#OpenMsgWin()')
  call SpaceVim#mapping#def('nnoremap <silent>','<M-c>',':call chat#chatting#OpenMsgWin()<cr>',
        \ 'Open chatting room','call chat#chatting#OpenMsgWin()')

  call SpaceVim#mapping#def('nnoremap <silent>','g=',':call zvim#format()<cr>','format current buffer','call zvim#format')

  call SpaceVim#mapping#def('nnoremap <silent>', '<C-c>', ':<c-u>call zvim#util#CopyToClipboard()<cr>',
        \ 'Copy buffer absolute path to X11 clipboard','call zvim#util#CopyToClipboard()')
endfunction

fu! s:tobur(num) abort
  if index(get(g:,'_spacevim_altmoveignoreft',[]), &filetype) == -1
    if a:num ==# 'next'
      if tabpagenr('$') > 1
        tabnext
      else
        bnext
      endif

    elseif a:num ==# 'prev'
      if tabpagenr('$') > 1
        tabprevious
      else
        bprev
      endif
    else
      let ls = split(execute(':ls'), "\n")
      let buffers = []
      for b in ls
        let nr = matchstr(b, '\d\+')
        call add(buffers, nr)
      endfor
      if len(buffers) >= a:num
        exec 'buffer ' . buffers[a:num - 1]
      endif
    endif
  endif
endf

function! SpaceVim#default#UseSimpleMode() abort

endfunction

function! SpaceVim#default#Customfoldtext() abort
  "get first non-blank line
  let fs = v:foldstart
  while getline(fs) =~# '^\s*$' | let fs = nextnonblank(fs + 1)
  endwhile
  if fs > v:foldend
    let line = getline(v:foldstart)
  else
    let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif

  let foldsymbol='+'
  let repeatsymbol=''
  let prefix = foldsymbol . ' '

  let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = ' ' . foldSize . ' lines '
  let foldLevelStr = repeat('+--', v:foldlevel)
  let lineCount = line('$')
  let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
  let expansionString = repeat(repeatsymbol, w - strwidth(prefix.foldSizeStr.line.foldLevelStr.foldPercentage))
  return prefix . line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction

" vim:set et sw=2:
