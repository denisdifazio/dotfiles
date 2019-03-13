call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme gruvbox
set background=dark
set termguicolors
set number
set laststatus=2
set noshowmode
set updatetime=100

filetype on
filetype plugin on

let NERDTreeShowHidden=1

map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
nnoremap <C-b>\ <C-w>v
nnoremap <C-b>- <C-w>s
