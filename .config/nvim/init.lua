-- load all plugins
require "pluginList"
require "options"
require "plugins.bufferline"

local g = vim.g

g.mapleader = " "
g.auto_save = false

-- colorscheme related stuff
local base16 = require "base16"

local theme = os.getenv("THEME")
if theme == "nord" then
  g.nvchad_theme = "nord"
  base16(base16.themes["nord"], true)
elseif theme == "onedark" then
  g.nvchad_theme = "onedark"
  base16(base16.themes["onedark"], true)
else
  g.nvchad_theme = "nord"
 base16(base16.themes["nord"], true)
end

require "highlights"
require "mappings"

require("utils").hideStuff()
