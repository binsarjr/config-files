:set showmatch                  " show matching
:set number                     " add line number
":set ignorecase                 " case insensitive
:set mouse=v                    " middle-click paste with
:set hlsearch                   " highlight search 
:set incsearch                  " incremental search
:set tabstop=4                  " number of columns occupied by a tab
:set softtabstop=4              " see multiple spaces as tabstops so <BS> does the right thing
:set expandtab                  " converts tabs to white space
:set shiftwidth=4               " width for autoindents
:set autoindent                 " indent a new line the same amount as the line just typed
filetype plugin indent on       " allow auto-indent depending on filetype
syntax on                       " syntax highlighting
:set mouse=a                    " enable mouse click
:set wildmode=longest,list      " get bash-like tab completions
":set cc=80                      " set an 80 column border for good coding style
:set clipboard=unnamedplus      " using system clipboard
":set cursorline                 " highlight current cursorline
":set ttyfast                    " enable speed up scrolling in vim
":set spell                      " enable spell check (may need to download language package)
:set noswapfile                 " disable creating swapfile
":set backupdir=~/.cache/vim     " Directory to store backup files.

" Auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors


call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = '???'
let g:airline_left_alt_sep = '???'
let g:airline_right_sep = '???'
let g:airline_right_alt_sep = '???'
let g:airline_symbols.branch = '???'
let g:airline_symbols.readonly = '???'
let g:airline_symbols.linenr = '???'
