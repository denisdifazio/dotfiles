call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/vim-gitbranch'
Plug 'pangloss/vim-javascript'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'

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
set noswapfile
set cursorline
set clipboard+=unnamedplus
set ignorecase
set smartcase
set shortmess+=c
set signcolumn=yes
set hidden

filetype on
filetype plugin on

noremap <C-p> :Files<CR>

" coc nvim configuration
" use <tab> for trigger completion and navigate to next complete item
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

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
