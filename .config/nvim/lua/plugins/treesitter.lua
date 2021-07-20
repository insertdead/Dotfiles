local M = {}

M.config = function()
    local ts_config = require("nvim-treesitter.configs")

    ts_config.setup {
        ensure_installed = {
            "javascript",
            "html",
            "css",
            "bash",
            "lua",
            "json",
            "python"
            -- "rust",
            -- "go"
        },
        highlight = {
            enable = true,
            use_languagetree = true
        },
        -- Rainbow parentheses
        rainbow = {
          enable = true,
          extended_mode = true,
          colors = {
            "#abb2bf",
            "#98c379",
            "#61afef",
            "#56b6c2",
            "#e5c07b",
            "#c678dd",
          }
        }
    }
end

return M
