"
set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()


" Syntax Highlighting
syntax on

" Highlight matches of search
set hlsearch
" search while typing
set incsearch

" highlight last inserted text
nnoremap gV `[v`]

" search in subfolders
" works with tab-completion
set path+=**

" visual autocomplete for command menu
set wildmenu

set wildignore+=*/tmp/*,*.so,*.swp
set wildignore+=*/vendor/*,*.o,*.pyc
set wildignore+=*/tags/*,*.log,*.zip
set wildignore+=*/\.git/*

" split layout
set splitright

" jump to first open window that contains buffer
set switchbuf+=useopen,vsplit

" switch between window splits
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <silent> <C-w>k :wincmd k<CR>
nmap <silent> <C-w>j :wincmd j<CR>
nmap <silent> <C-w>h :wincmd h<CR>
nmap <silent> <C-w>l :wincmd l<CR>

" resize window
map <C-S-DOWN> <C-w>+
map <C-S-UP> <C-w>-
map <C-S-LEFT> <C-w><
map <C-S-RIGHT> <C-w>>

"
" PLUGINS
" 

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0


"
" LANGUAGES
"
filetype indent on

" Makefile
autocmd BufEnter Makefile setlocal noexpandtab

" PYTHON
" Format PEP-8
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab

" C++
autocmd FileType cpp setlocal tabstop=4
autocmd FileType cpp setlocal shiftwidth=4
autocmd FileType cpp setlocal softtabstop=4
autocmd FileType cpp setlocal expandtab
autocmd FileType cpp setlocal autoindent

" BASH
autocmd FileType sh setlocal tabstop=4
autocmd FileType sh setlocal shiftwidth=4
autocmd FileType sh setlocal softtabstop=4
autocmd FileType sh setlocal expandtab

" Go
autocmd FileType go setlocal tabstop=2
autocmd FileType go setlocal shiftwidth=2
autocmd FileType go setlocal softtabstop=2
autocmd FileType go setlocal expandtab
autocmd FileType go setlocal autoindent

" Haskell
autocmd FileType haskell setlocal tabstop=2
autocmd FileType haskell setlocal shiftwidth=2
autocmd FileType haskell setlocal softtabstop=2
autocmd FileType haskell setlocal expandtab

" Elixir
autocmd FileType elixir setlocal tabstop=2
autocmd FileType elixir setlocal shiftwidth=2
autocmd FileType elixir setlocal softtabstop=2
autocmd FileType elixir setlocal expandtab


"
" KEY MAPPINGS - leader
"

" the \ is too far away for a leader key
let mapleader=","

" the <esc> is too far away
inoremap ;; <esc>

" 1 key

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" open Ack.vim
nnoremap <leader>a :Ack! 

" buffers, including unlisted
nnoremap <leader>b :buffers!<CR>:buffer<Space>

" toggle QuickFix
nnoremap <leader>c :cw<CR>

" help
nnoremap <leader>h :help 

" close terminal window
tnoremap <leader>q <C-w>:q!<CR>
nnoremap <leader>q <C-\><C-n>:q!<CR>

" switcher
nnoremap <leader>s :CtrlPBuffer<CR>


" 2 keys

""" tool windows
" quickfix
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprevious<CR>

" location list
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprevious<CR>

" help
nnoremap <leader>hc :helpclose<CR>


""" IDE

" Save and quit
nnoremap <C-S> :w<CR>
nnoremap <C-Q> :wq<CR>

" Delete Line
nnoremap <c-d> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <c-s-d> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" Insert Line
nnoremap <c-y> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <c-s-y> :set paste<CR>m`O<Esc>``:set nopaste<CR>
