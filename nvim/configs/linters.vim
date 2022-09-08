" let g:ale_linters = {'ruby': ['standardrb']}
" let g:ale_fixers = {'ruby': ['standardrb']}
" " let g:ale_fix_on_save = 1
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_save = 1
"
"
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {'javascript': ['eslint']}
"
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
