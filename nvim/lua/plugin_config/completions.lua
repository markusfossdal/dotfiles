local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  -- Disable autocompletion when typing
  snippet = {
    expand = function(args)
      -- Only expand when Ctrl+Space is pressed
      if vim.fn.pumvisible() == 0 and vim.fn['luasnip#expand_or_jumpable']() == 0 then
        return require('luasnip').lsp_expand(args.body)
      else
        vim.fn['cmp#cancel']()
        -- Return an empty string to insert a regular tab
        return ""
      end
    end,
  },

    mapping = {
        ['<C-Space>'] = cmp.mapping.complete({}),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        }),

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            --elseif luasnip.expand_or_jumpable() then
                --luasnip.expand_or_jump()
            else
                fallback()
            end
        end, {"i", "s"}),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            --elseif luasnip.jumpable(-1) then
            --    luasnip.jump(-1)
            else
                fallback()
            end
        end, {"i", "s"}),

    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    }),
})

