" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader = "\<Space>"
nmap <Leader>rxm :ExtractMethod<Enter>

" Copy the relative path of the current file to the clipboard
nmap <Leader>cf :silent !echo -n % \| pbcopy<Enter>


source $HOME/.vim/.vimrc.plugins
source $HOME/.vim/.vimrc.amix

"########################
"put local settings here:

"#####################
"Splits
" Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Open new splits easily
map vv <C-W>v
map ss <C-W>s
map Q  <C-W>q

" Open splits on the right and below
set splitbelow
set splitright

" line numbers - hybrid
set number relativenumber

" Maximize/minimize current buffer
nnoremap <C-W>M <C-W>\|<C-W>_
nnoremap <C-W>m <C-W>=

let g:netrw_liststyle = 1
let g:netrw_sizestyle= "H"

" airline settings
let g:airline_powerline_fonts = 1
