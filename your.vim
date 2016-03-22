""""""""""""""""""""""""""""""""""""""""""""""""""
" My .vimrc
"
" Inspired by:
"   https://github.com/theshteves/vim-workshop
"
""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Line numbers... everywhere...
set number

" Prints current cursor position on status line
set ruler

" Highlight search results
set hlsearch

" Make backspace WORK like you'd expect
set backspace=indent,eol,start

" Set this NECESSARY theme (Kneiser's DOPE theme *trademarked*)
set background=light

" Ignores capital-typos when you want to write/quit
" Not many people about this but you'll definitely thank me
" Inspired by: http://alexander-hill.tumblr.com/post/78142366738/how-to-fix-the-capital-w-annoyance-in-vim
:command WQ wq
:command Wq wq
:command W w
:command Q q
