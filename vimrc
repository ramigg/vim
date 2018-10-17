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

"###############
" https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
" NerdTree setup

" Open by default
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

" toggle tree
nnoremap <Leader>f :NERDTreeToggle<Enter>

" open tree and move cursor to the current file
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Closing automatically after openning a file
let NERDTreeQuitOnOpen = 1

" Automatically delete the buffer of the file you just deleted with NerdTree:
let NERDTreeAutoDeleteBuffer = 1

" make it prettier:
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


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
