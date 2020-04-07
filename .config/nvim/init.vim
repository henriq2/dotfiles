" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'elixir-editors/vim-elixir'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/seoul256.vim'
Plug 'wincent/terminus'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let mapleader = " "
set relativenumber
colorscheme seoul256

" Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Switch between the last two files
nmap <Leader><Leader> <c-^>

" Move lines
nmap <c-j> :move .+1<cr>
nmap <c-k> :move .-2<cr>

" Fzf
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>r :Rg<CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>g :BLines<CR>

" Close buffer
nmap <Leader>d :bdelete<CR>
nmap <Leader>q :bdelete!<CR>

