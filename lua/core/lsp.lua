vim.lsp.enable({ "lua_ls", "intelephense", "typescript-language-server", "html" })

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'noselect', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            vim.keymap.set('i', '<C-Space>', function()
                vim.lsp.completion.get()
            end)

            local bufnr = ev.buf

            -- Mapeos de teclas específicos para LSP
            local opts = { buffer = bufnr, remap = false }

            -- Enable (broadcasting) snippet capability for completion
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true
            vim.lsp.config('html', {
                capabilities = capabilities,
            })

            -- Navegación y acciones básicas
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
            --vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, opts)

            -- TU MAPEO DE FORMATEO (manteniendo el que ya tenías)
            vim.keymap.set('n', '<leader>lf', function()
                vim.lsp.buf.format({ async = true })
            end, opts)

            -- Diagnósticos
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
            vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, opts)
        end
    end,
})

local cmp = require('cmp')
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'buffer',  keyword_length = 3 },
        { name = 'vsnip' },
        { name = 'path' },
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
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
            -- Comparador personalizado para priorizar var_dump
            function(entry1, entry2)
                local e1_text = entry1.completion_item.label
                local e2_text = entry2.completion_item.label
                -- Si uno es var_dump y el otro var_export, priorizar var_dump
                if e1_text == "var_dump" and e2_text == "var_export" then
                    return true
                elseif e1_text == "var_export" and e2_text == "var_dump" then
                    return false
                end
                return nil
            end,
            cmp.config.compare.offset,
            cmp.config.compare.score,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    }
})


vim.diagnostic.config({
    -- Defaul, show in virtual lines all warning or error
    --virtual_lines = true,

    -- Customize specific options
    --[[virtual_lines = {
		current_line = true,
	},]]
    --[[virtual_text = {
		prefix = "●", -- Puedes usar "■", "▎", "x" según prefieras
		source = "always", -- o "if_many"
		format = function(diagnostic)
			return string.format("%s [%s]", diagnostic.message, diagnostic.source or "LSP")
		end,
	},
	signs = true,      -- Muestra iconos en la columna de signos
	underline = true,  -- Subraya el código problemático
	update_in_insert = false, -- No actualiza mientras escribes
	severity_sort = true, -- Ordena por severidad]]

})
