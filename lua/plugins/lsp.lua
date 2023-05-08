
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
end)

lsp.ensure_installed({
  'tsserver',
  'eslint',
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.nvim_workspace()
lsp.set_preferences({
  suggest_lsp_servers = false,
  set_lsp_keymaps = { omit = { '<C-k>' } },
  sign_icons = {
    error = '✘', -- 'E'
    warn = '▲', -- 'W'
    hint = '⚑', -- 'H'
    info = "I", -- 'I'
  }
})
lsp.setup()


-- config to autocompletion - 'hrsh7th/nvim-cmp'
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local luasnip = require('luasnip')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'vsnip'},
        {name = 'buffer', keyword_length = 3},
        {name = 'luasnip', keyword_length = 2},
    },
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
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
