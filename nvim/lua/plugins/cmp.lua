return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",           -- source for text in buffer
        "hrsh7th/cmp-path",             -- source for file system paths
        "L3MON4D3/LuaSnip",             -- snippet engine
        "saadparwaiz1/cmp_luasnip",     -- autocompletion of luasnips
        "rafamadriz/friendly-snippets", -- useful snippets
    },

    -- autocompletion activated in insert mode only
    event = "InsertEnter",

    -- general config
    config = function()
        -- load nvim.cmp
        local cmp = require("cmp")

        --load luasnip
        local luasnip = require("luasnip")

        -- load snippets from "friendly-snippets"-plugin to luasnip
        require("luasnip.loaders.from_vscode").lazy_load()

        -- setup cmp
        cmp.setup({
            completion = {
                -- settings for how the completion menu behaves.
                -- check :h completeopt for more info
                completeopt = "menu, menuone, preview, noselect",
            },

            -- configure how luasnip interacts with nvim.cmp
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            -- configure nvim.cmp specific mappings
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(),         -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(),         -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),            -- scroll through docs
                ["<C-f>"] = cmp.mapping.scroll_docs(4),             -- scrll through docs
                ["<C-Space>"] = cmp.mapping.complete(),             -- show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(),                    -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm menu selection
            }),

            -- sources for autocompletion (order matters in autocompletion menu).
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- lsp
                { name = "luasnip" }, -- snippets
                { name = "buffer" },  -- text within current buffer
                { name = "path" },    -- file system paths
            }),
        })
    end

}
