----------------------------------- Variables -----------------------------------
local cmd, fn, g = vim.cmd, vim.fn, vim.g
local o, wo, bo = vim.o, vim.wo, vim.bo

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- local function executable(exec)
  -- local exit = os.execute(exec)
  -- local value = exit / 256
  -- if value == 0 then return 1
  -- else return 0 end
-- end

----------------------------------- Settings ------------------------------------
local indent = 2
local width = 80

--  Tabs
o.showtabline = 0

--    Indenting
o.modeline = true
o.modelines = 5
bo.smartindent = true
bo.expandtab = true
bo.tabstop = indent
bo.shiftwidth = indent

--  Search & History
o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.hlsearch = true
o.history = 5000

--  Lines
--   bo.textwidth = width
wo.number = true
wo.relativenumber = true

--  ctrl-space
o.hidden = true
o.encoding= 'utf-8'
g['airline#extensions#ctrlspace#enabled'] = 1
g['CtrlSpaceDefaultMappingKey'] = '<C-Space> '
g['CtrlSpaceStatuslineFunction'] = 'airline#extensions#ctrlspace#statusline()'
if fn.executable('ag') then
  g['CtrlSpaceGlobCommand'] = 'ag -l --nocolor -g ""'
end

--  Statusbar
o.showcmd = true

--      Airline
g['airline_powerline_fonts'] = 1
g['airline#extensions#ale#enabled'] = 1
g['airline#extensions#tabline#enabled'] = 1

-- Completion

--  Theme
--  LPT: set your term to 'xterm-256color' in your terminal config if using tmux
o.termguicolors = true
g['nord_cursor_line_number_background'] = 1
g['nord_italic_comments'] = 1
g['nord_underline'] = 1
g['airline_theme'] = 'nord'

--  Plugins
--      Deol
g['deol#custom_map'] = {edit = 'e'
        , start_insert = 'i'
        , start_insert_first = 'I'
        , start_append = 'a'
        , start_append_last = 'A'
        , execute_line = '<CR>'
        , previous_prompt = '<C-p>'
        , next_prompt = '<C-p>'
        , paste_prompt = '<C-y>'
        , bg = '<C-z>'
        , quit = 'q'
}
-- 	Treesitter/Syntax highlighting
g['ch_syntax_for_h'] = 1
local ts = require'nvim-treesitter.configs'.setup
ts{highlight = {enable = true}, ensure_installed = "maintained"}
-- Snippets
g['UltiSnipsExpandTrigger'] = '<Tab>'
g['UltiSnipsJumpForwardTrigger'] = '<C-x>'
g['UltiSnipsJumpBackwardTrigger'] = '<C-z>'
g['UltiSnipsEditSplit'] = 'tabdo'
-- Vimtex/LaTeX
g['vimtex_compiler_method'] = 'latexmk'
g['vimtex_quickfix_method'] = 'pplatex'

--------------------------------- Keybindings -----------------------------------
--  Set leaderkeys (<Localleader>, <Leader>)
map('n', '<Space>', '', {})
g['mapleader'] = ' '
g['maplocalleader'] = ','
--  Navigation
map('n', 'j', 'gj')
map('n', 'k', 'gk')
--      Completion

--      Tabs
map('n', '<Leader>tn', ':tabe<CR>')
map('n', '<Leader>th', ':tabp<CR>')
map('n', '<Leader>tl', ':tabn<CR>')
map('n', '<Leader>tc', ':q<CR>')
--      Windows
map('n', '<Leader>wn', ':vertical new<CR>')
map('n', '<Leader>we', ':new<CR>')
map('n', '<Leader>wc', ':q<CR>')
map('n', '<Leader>wh', '<C-w>h')
map('n', '<Leader>wj', '<C-w>j')
map('n', '<Leader>wk', '<C-w>k')
map('n', '<Leader>wl', '<C-w>l')
-- Other
map('n', '<M-x>', ':')

-- Files (NERDTree, netrw/Defx)
--map('n', '<Leader>ft', ':NERDTreeToggle %<CR>')
--map('n', '<Leader>ff', ':NERDTreeToggle ~/<CR>')

--  Commands
--      Other
map('n', '<silent><Leader><Return>', ':nohlsearch<CR>')

-- Snippets
map('n', '<Spacesn', 'UltiSnipsEdit')

--------------------------------- Abbreviations ---------------------------------
--  Command Abbreviations
cmd 'cabbrev terminal Deol'
cmd 'cabbrev term Deol'
cmd 'cabbrev split vsplit'
cmd 'cabbrev hsplit split'
cmd 'cabbrev sta vertical sta'
cmd 'cabbrev h vertical help'
cmd 'cabbrev help vertical help'
cmd 'cabbrev hhelp help'
cmd 'cabbrev new vertical new'
cmd 'cabbrev hnew new'

----------------------------------- Commands ------------------------------------
-- Paq-nvim (Plugins)
require('plugins')

-- Commands to execute
cmd('syntax on')
cmd('filetype plugin on')
cmd('colorscheme nord')
