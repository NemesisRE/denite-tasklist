if exists('g:loaded_unite_source_tasklist')
  finish
endif

if !exists('g:unite_tasklist_tokens')
  let g:unite_tasklist_tokens = [
        \ 'BUG',
        \ 'CAUTION',
        \ 'ERROR',
        \ 'FIXME',
        \ 'HACK',
        \ 'PATCH',
        \ 'TBD',
        \ 'TODO',
        \ 'WARNING',
        \ 'XXX',
        \]
endif

if !exists('g:unite_tasklist_ignorecase')
  let g:unite_tasklist_ignorecase = 0
endif

if !exists('g:unite_tasklist_tokens_highlight')
  let g:unite_tasklist_tokens_highlight = 1
endif

if g:unite_tasklist_tokens_highlight
  for token in g:unite_tasklist_tokens
    call matchadd('Todo', '\W\zs'.token.':', -1)
  endfor
endif

let g:loaded_unite_source_tasklist = 1
