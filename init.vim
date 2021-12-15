let mapleader=","
" Set to enable all Vim features
set nocompatible
" Set PCRE regex instead of using Vim regex
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v
" Indicates fast terminal connection.
" Can improve smoothness.
set ttyfast
" Always show status window
set laststatus=2
" Show last command
set showcmd
" Show current insert mode at the bottom of the screen
set showmode
" Setting tab to 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" Visual autocomplete for command menu
set wildmenu
set wildcharm=<C-Z>
" show the cursor position all the timeset ruler
set ruler
" Show @@@ in the last line if it is truncated
set display=truncate
" Set clipboard as a default register
set clipboard^=unnamed
" Add insert line bindings for normal mode
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D
" Time to wait for mappings
set timeout timeoutlen=1000
" Time to wait for key codes
set ttimeout ttimeoutlen=100
" Select last changed/yanked text
nnoremap <leader>v V`]
nnoremap Y y$
" Now it is possible to paste many times over selected text
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'
" Jump to next and previous tag
nnoremap ]t vatv
nnoremap [t vatov
" VS Code comments
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine
" Add jumps with k and j to jumplist when greater than 1
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'gk'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'gj'
" Search and substitution
"===================================================================================
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Clear search highlight to the next search
nnoremap <silent> <Leader><space> :nohlsearch<cr>
" Switch between case sensitive and insensitive
nnoremap <Leader>c :set ignorecase! ignorecase?<cr>
" Intelligent case. All lower case will be case insensitive,
" but if any character will be upper search will be case sensitivie.
set ignorecase
set smartcase
" set noignorecase
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Applies substitutions globally on line
set gdefault
" Case sensitive substitution
" Last buffer
nnoremap <Leader>f :b#<CR>

autocmd User targets#mappings#user call targets#mappings#extend({
    \ 'a': {'argument': [{'o': '[([{]', 'c': '[])}]', 's': ','}]},
    \ })