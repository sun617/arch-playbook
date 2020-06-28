set termguicolors

" encoding
set fileencodings=utf-8,utf-16le,cp932,iso-2022-jp,euc-jp,latin1

" indent
set cindent
set expandtab
set shiftwidth=2
let &softtabstop=&shiftwidth
set pastetoggle=<F10>

" search
set ignorecase
set smartcase

" window split
set splitbelow
set splitright

" options
set cmdheight=2
set hidden
set nomodeline
set noswapfile
set nowrap
set number
set signcolumn=yes
set updatetime=300

" map
let mapleader = "\<Space>"

" available keys
" ctrl-m, ctrl-p, ctrl-q, ctrl-s
" ca cd cm co cp cq cr cu cv cx cy cz
" cA cD    cO cP cQ cR cU cV cX cY cZ
" da dc dm dq dr du dv dx dy dz
" dA dC    dQ
" va vc vd vm vo vp vq vr vs vu vv vx vy vz
" vA
" ya yc yd ym yo yp yq yr ys yu yv yx yz
" yA
" gb gc gl
" gB
" zp zq zu zy

" Common
nnoremap j gj
nnoremap k gk
nnoremap <C-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>w :write<CR>
nnoremap <Leader>W :write !sudo tee > /dev/null %<CR>
nnoremap <Leader>/ :nohlsearch<CR>
nnoremap <Leader>d :bdelete<CR>
nnoremap <Leader>D :call delete(expand('%')) <Bar> :bdelete<CR>
nnoremap <Leader>q :qall<CR>

" tab
"nmap <Leader>te :tabedit %<CR>
nnoremap \t :tabclose<CR>

" terminal
tnoremap <C-]> <C-\><C-n>
" tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" QuickFix
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap \q :cclose<CR>

" LocationList
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap \l :lclose<CR>

" Tmux
function! TmuxMove(direction)
  let wnr = winnr()
  silent! execute 'wincmd ' . a:direction
  " If the winnr is still the same after we moved, it is the last pane
  if wnr == winnr()
    call system('tmux select-pane -' . tr(a:direction, 'phjkl', 'lLDUR'))
  end
endfunction

nnoremap <silent> <M-h> :call TmuxMove('h')<CR>
nnoremap <silent> <M-j> :call TmuxMove('j')<CR>
nnoremap <silent> <M-k> :call TmuxMove('k')<CR>
nnoremap <silent> <M-l> :call TmuxMove('l')<CR>

" Vim-Plug
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" colorscheme
Plug 'mhartington/oceanic-next'
" language packs
Plug 'sheerun/vim-polyglot'
" lightline
Plug 'itchyny/lightline.vim'
" indent
Plug 'Yggdroot/indentLine'
" motion
Plug 'justinmk/vim-sneak'
" surround
Plug 'tpope/vim-surround'
" autopairs
Plug 'jiangmiao/auto-pairs'
" comment
Plug 'tomtom/tcomment_vim'
" endwise
"Plug 'tpope/vim-endwise'
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" snippets
Plug 'honza/vim-snippets'
" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Asynchronous linting/fixing
Plug 'w0rp/ale'
" git
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
" markdown-preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
" emoji
Plug 'junegunn/vim-emoji'
" nnn
Plug 'mcchrish/nnn.vim'
" Initialize plugin system
call plug#end()

" plugin settings
colorscheme OceanicNext
source ~/.config/nvim/plugins/autopairs.vim
source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/emoji.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/gitgutter.vim
source ~/.config/nvim/plugins/indent_line.vim
source ~/.config/nvim/plugins/nnn.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/markdown_preview.vim

" vue
autocmd FileType vue syntax sync fromstart
