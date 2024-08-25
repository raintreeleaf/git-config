"Added two line on the top as advised by documentation
"so that defaults.vim can load. (linux)
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
"set number for python files
augroup filetype_python
	autocmd!
	autocmd FileType python setlocal number
	autocmd FileType python nnoremap <buffer> <leader>c 0i#<esc> 
augroup END

"turn statusline back on. Don't know why it disappeared
:set laststatus=2
"=======================================
