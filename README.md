# unite-tasklist

Tasklist source for [unite.vim](https://github.com/shougo/unite.vim)

Also adds the task list tokens to the Todo syntax group for highlighting

## Usage

`:Unite tasklist`

## Variables

### g:unite_tasklist_tokens

The tokens searched for when making the task list

```
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
```


### g:unite_tasklist_ignorecase

Wither or not the case of the tokens matters

    `let g:unite_tasklist_ignorecase = 0`


### g:unite_tasklist_tokens_highlight
If 1 then the tokens in `g:unite_tasklist_tokens` are added to the syntax
group Todo

`let g:unite_tasklist_tokens_highlight = 1`
