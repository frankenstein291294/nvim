
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
end)

lsp.ensure_installed({
    'tsserver',
    'eslint',
})

lsp.setup()


local cmp = require('cmp')
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = {
        {name = 'luasnip'},
        {name = 'nvim_lsp'},
        {name = 'buffer', keyword_length = 3},
        {name = 'vsnip'},
        {name = 'path'},
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    },
    completion = {
        completeopt = 'menu,menuone,noinsert',
        preselect = 'always',
    },
    sorting = {
        priority_weight = 2,
        reverse = true,
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.score,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    }
})
