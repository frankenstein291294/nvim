
local lsp = require('lsp-zero').preset({
    float_border = 'none',
    configure_diagnostics = false,
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'ds', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'dh', vim.lsp.buf.signature_help, {})
    -- vim.api.nvim_command('autocmd CursorHold * lua vim.lsp.buf.hover()')
    -- vim.api.nvim_command('autocmd CursorHold * lua vim.lsp.buf.signature_help()')

    vim.keymap.set({'n', 'x'}, 'gq', function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end, {})

    vim.diagnostic.config({
        virtual_text = true,
    })

end)

lsp.ensure_installed({
    -- 'tsserver',
    'ts_ls',
    'eslint',
})

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.setup()


--[[ Autocompletion ]]

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
