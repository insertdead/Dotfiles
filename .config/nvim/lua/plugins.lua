local cmd = vim.cmd

-- Setup
cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt=true} -- Let paq manage itself

-- Packages
--  Statusbar
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
--  Themes
paq 'arcticicestudio/nord-vim'
--  Utilities
paq 'vim-ctrlspace/vim-ctrlspace'
paq 'tpope/vim-dispatch'
paq 'tpope/vim-fugitive'
-- 	Language-Specific
paq 'lervag/vimtex'
-- 	General
paq 'Shougo/deol.nvim'
paq 'tpope/vim-surround'
paq 'ludovicchabant/vim-gutentags'
paq 'tpope/vim-commentary'
paq 'dense-analysis/ale'
paq 'ryanoasis/vim-devicons'
-- Snippets
paq 'SirVer/ultisnips'
paq 'honza/vim-snippets'
-- Syntax
paq 'tmux-plugins/vim-tmux'
paq {'nvim-treesitter/nvim-treesitter', run='TSUpdate'}
paq 'cespare/vim-toml'
paq 'euclidianAce/BetterLua.vim'
-- Completion
paq 'neoclide/coc.nvim'
