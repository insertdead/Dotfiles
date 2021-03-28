local cmd = vim.cmd

-- Setup
cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt=true} -- Let paq manage itself

-- Packages
--  Some of Shougo's 'Dark' plugins (Works best with neovim)
paq 'Shougo/denite.nvim'
--paq 'Shougo/defx.nvim'
paq 'Shougo/deol.nvim'
paq 'Shougo/deorise.nvim'
--  Statusbar
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
paq 'vim-ctrlspace/vim-ctrlspace'
--  Themes
paq 'cocopon/iceberg.vim'
paq 'arcticicestudio/nord-vim'
--  Utilities
-- 	Language-Specific
paq 'lervag/vimtex'
paq 'tpope/vim-dispatch'
paq 'tpope/vim-fugitive'
paq 'ojroques/nvim-lspfuzzy'
-- 	General
paq 'tpope/vim-surround'
paq 'ludovicchabant/vim-gutentags'
paq 'tomtom/tcomment_vim'
paq 'dense-analysis/ale'
paq 'preservim/nerdtree'
paq 'ryanoasis/vim-devicons'
-- Snippets
paq 'SirVer/ultisnips'
paq 'honza/vim-snippets'
-- Syntax
paq 'tiagofumo/vim-nerdtree-syntax-highlight'
paq 'tmux-plugins/vim-tmux'
paq {'nvim-treesitter/nvim-treesitter'} --, run='TSUpdate'
paq 'cespare/vim-toml'
paq 'euclidianAce/BetterLua.vim'
paq {url = 'https://tildegit.org/sloum/gemini-vim-syntax', as='gemtext'}
-- Completion
paq 'neovim/nvim-lspconfig'
paq 'Shougo/deoplete.nvim'
paq 'deoplete-plugins/deoplete-lsp'
paq 'ncm2/float-preview.nvim'
-- Lua integration help
paq 'nvim-lua/plenary.nvim'
