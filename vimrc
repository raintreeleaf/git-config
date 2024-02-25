
"My custom settings=====================
let mapleader = "-"

set ignorecase
set smartcase

"open up myvimrc for quick editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"reload myvimrc for mapping to take effect
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev lkk Lee Kah Keong

"wrap highlighted word in double quotes
vnoremap <leader>q <esc>`<i"<esc>`>la"

"wrap highlighted word in {% %} django
vnoremap <leader>g <esc>`<i {% <esc>`>lllla %}<esc>

"set number for python files
augroup filetype_python
	autocmd!
	autocmd FileType python setlocal number
augroup END

"=======================================
