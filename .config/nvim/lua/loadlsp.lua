local user = '/home/madsci'
local sumneko_root_path = user .. '/git/lua-language-server'
local lsp = require'lspconfig'
local lspfuzz = require'lspfuzzy'
local root_pattern = lsp.util.root_pattern

local lspconfigs = {
    denols = {},
    texlab = {},
    yamlls = {},
    clangd = {},
    sorbet = {cmd = {'srb', 'tc', '--lsp'}, root_dir = root_pattern(".git") or bufdir},
    solargraph = {},
    vimls  = {},
    jedi_language_server = {},
    sumneko_lua = {
      cmd = {sumneko_root_path ..'/bin/Linux/lua-language-server', "-E", sumneko_root_path .. "/main.lua"};
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = vim.split(package.path, ';'),
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = {
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            },
          },
        },
      },
    },
}

for ls, cfg in pairs(lspconfigs) do lsp[ls].setup(cfg) end
lspfuzz.setup {}
