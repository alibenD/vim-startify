let s:log = [
      \'░█▀█░█░░░▀█▀░█▀▄░█▀▀░█▀█',
      \'░█▀█░█░░░░█░░█▀▄░█▀▀░█░█',
      \'░▀░▀░▀▀▀░▀▀▀░▀▀░░▀▀▀░▀░▀',
      \ ]

function! s:get_random_offset(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\.\zs\d\+')[1:]) % a:max
endfunction

function! startify#fortune#quote() abort
  return s:quotes[s:get_random_offset(len(s:quotes))]
endfunction

function! startify#fortune#dogesay() abort
  return map(s:log, '"   ". v:val')
endfunction
