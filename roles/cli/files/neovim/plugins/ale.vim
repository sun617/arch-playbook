let g:ale_disable_lsp = 1
let g:ale_fixers = {
    \ 'javascript': ['prettier', 'eslint'],
    \ 'typescript': ['prettier', 'eslint'],
    \ 'vue': ['prettier'],
    \ 'ruby': ['rubocop'],
    \ 'python': ['black'],
    \ }

" Map
nnoremap <F8> <Plug>(ale_fix)
