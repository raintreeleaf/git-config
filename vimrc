"Added two line on the top as advised by documentation
"so that defaults.vim can load. (linux)
"use command :scriptnames to check order
"put script in after folder to load last
unlet! skip_defaults_vim
        source $VIMRUNTIME/defaults.vim

"My custom settings=====================
let mapleader = "-"

set ignorecase
set smartcase
set hlsearch

"open up myvimrc for quick editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"reload myvimrc for mapping to take effect
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev lkk Lee Kah Keong

"wrap highlighted word in double quotes
vnoremap <leader>q <esc>`<i"<esc>`>la"

"wrap highlighted word in {% %} django
vnoremap <leader>g <esc>`<i {% <esc>`>lllla %}<esc>
"Uppercase for word
"
"Use za to unfold
"Python file settings{{{
augroup filetype_python
	autocmd!
"set number for python files
	autocmd FileType python setlocal number
	autocmd FileType python nnoremap <buffer> <leader>c 0i#<esc> 
augroup END
"}}}
" Vimscript file settings{{{
augroup filetype_vim
autocmd!
autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"turn statusline back on. Don't know why it disappeared
:set laststatus=2
"=======================================
