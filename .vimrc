syntax enable

set backspace=indent,eol,start

let mapleader = ',' 
set number
colorscheme molokai
set termguicolors

set tabstop=4           " Tab width
set softtabstop=4       " Soft tab width
set shiftwidth=4        " Shift width
set expandtab           " Use spaces instead of tabs
set mouse=

filetype plugin indent on


"-----------------filetypes--------------"
" php settings
au FileType php setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 colorcolumn=120





"-----------------visual--------------"
highlight Normal guibg=None
hi LineNr guibg=bg guifg=#dc1437
hi vertsplit guibg=bg
:set fillchars+=vert:\ 
"-----------------plugs--------------"
call plug#begin()
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'rking/ag.vim'
Plug 'StanAngeloff/php.vim'             " Improved syntax highlighting for php
Plug 'ludovicchabant/vim-gutentags'     " Automatic ctags
"Plug 'ncm2/ncm2'                        " Autocompletion engine
"Plug 'ncm2/ncm2-bufword'                " Basic word completion? testing
"Plug 'roxma/nvim-yarp'                  " Yet Another Remote Plugin Framework (dependency of ncm2)
"Plug 'phpactor/phpactor', {'do': 'composer install', 'for': 'php'} " PHP introspection and refactor tools
"Plug 'phpactor/ncm2-phpactor'           " Phpactor integration for ncm2 (autocomplete)
Plug 'tpope/vim-fugitive'               " Git integration
Plug 'mhinz/vim-signify'                " Git integration inline
Plug 'stephpy/vim-php-cs-fixer'         " Coding standards fixer
Plug 'w0rp/ale'                         " Asynchronous code linter and anylysis
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'raimondi/delimitmate'
Plug 'theRealCarneiro/hyprland-vim-syntax'


call plug#end()

"-----------------coc--------------"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"



"-----------------ncm2--------------"

" ncm2 (autocompletion engine) config
" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect
" Use <TAB> to select the popup menu (autocomplete)
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"-----------------phpactor--------------"

"nmap <Leader>u :call phpactor#UseAdd()<CR>
"autocmd FileType php inoremap <Leader>u <Esc>:call phpactor#UseAdd<CR>
"let g:phpactorOmniAutoClassImport = v:true " automatically import classes with omnicomplete
"-----------------search--------------"

set hlsearch
set incsearch

nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>


"-------------CtrlP----------------"
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'


"-------------Nerdtree-toggle----------------"
nmap <Leader>1 :NERDTreeToggle<cr>




"-------------splits----------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J> 
nmap <C-H> <C-W><C-H> 
nmap <C-K> <C-W><C-K> 
nmap <C-L> <C-W><C-L> 



"-------------mappings----------------"
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <leader>n :tabnext<cr>
nmap <leader>p :tabprevious<cr>
nmap <leader>c :tabclose<cr>
nmap <C-D> yyp





"-------------auto-commands-----------"
augroup autocmds
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
