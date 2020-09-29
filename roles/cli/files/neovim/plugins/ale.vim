let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \ 'go': ['gofmt'],
    \ 'javascript': ['prettier', 'eslint'],
    \ 'typescript': ['prettier', 'eslint'],
    \ 'vue': ['prettier'],
    \ 'ruby': ['rubocop'],
    \ 'python': ['black'],
    \ }

" Map
nmap <F8> <Plug>(ale_fix)
