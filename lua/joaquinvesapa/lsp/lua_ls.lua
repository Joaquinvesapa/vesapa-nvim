vim.lsp.config('lua_ls', {
            cmd = { 'lua-language-server' },
            filetypes = { 'lua' },
            root_markers = { '.luarc.json', '.luarc.jsonc' },
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT', -- or '5.1', '5.2', '5.3', '5.4'
                    },
                    diagnostics = {
                        globals = { 'vim' }, -- Add 'vim' as a global to avoid warnings
                    },
                },

            },
        })
