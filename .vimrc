"
"
"
"
"
"
"
"
"
"
"
" Tab size
set tabstop=4
" Line Numbering
set number
" Show command bar
set showcmd
" Cursor line Highlight (commented until I think it could be useful
" set cursorline
" Filetype indent detection
filetype indent on
" Autocomplete menu
set wildmenu
"lazy redraw; <i>fast</i> macros
set lazyredraw
" highlight matching brackets; i.e. (bruh)
set showmatch
" search stuff
set incsearch
set hlsearch
" keycombo to remove highlight as soon as pressed enter
nnoremap <return> :nohlsearch<CR>
"Code folding + keybind
set foldenable
set foldlevelstart=10
nnoremap <space> za
" fold based on indentation if filetype python
autocmd Filetype python set foldmethod=indent
" Navigate visually
nnoremap j gj
nnoremap k gk
"Keybindings for convenience

" New Tab
nnoremap <C-S-t> :tabe<CR>
" Exit
nnoremap <C-S-Esc> :q
" Exit and save
nnoremap <C-S-s> :wq
" Navigate Tabs
nnoremap <C-S-l> :tabn<CR> 
nnoremap <C-S-h> :tabp<CR> 
" Open Nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
" Plugins & Vim-Plug
call plug#begin('~/.vim/plugged')
"Plugin declarations go here 
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
call plug#end()
" Theme
colorscheme onedark
autocmd colorscheme * highlight Normal ctermbg=NONE guibg=NONE
" Syntax Highlighting
syntax on