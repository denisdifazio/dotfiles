call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'itchyny/vim-gitbranch'

call plug#end()

colorscheme gruvbox
set background=dark
set termguicolors
set number
set laststatus=2
set noshowmode
set updatetime=100
set nobackup
set nowritebackup

filetype on
filetype plugin on

let NERDTreeShowHidden=1

map <C-p> :Files<CR>
nnoremap <C-b>\ <C-w>v
nnoremap <C-b>- <C-w>s
nnoremap <leader>] <C-]>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
     \ pumvisible() ? "\<C-n>" :
     \ <SID>check_back_space() ? "\<TAB>" :
     \ coc#refresh()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
