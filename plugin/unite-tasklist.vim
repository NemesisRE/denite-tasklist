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

  if !exists('g:unite_tasklist_token_syntax_prefix')
    let g:unite_tasklist_token_syntax_prefix = '\W\zs'
  endif

  if !exists('g:unite_tasklist_token_syntax_group')
   let g:unite_tasklist_token_syntax_group = 'Todo'
  endif

  if !exists('g:unite_tasklist_token_syntax_postfix')
   let g:unite_tasklist_token_syntax_postfix = ':'
  endif

  for token in g:unite_tasklist_tokens
    call matchadd(g:unite_tasklist_token_syntax_group,
          \ g:unite_tasklist_token_syntax_prefix . token .
          \ g:unite_tasklist_token_syntax_postfix)
  endfor
endif

let g:loaded_unite_source_tasklist = 1
