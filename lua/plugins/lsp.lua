local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
end)

lsp.ensure_installed({
  'tsserver',
  'eslint',
})

lsp.setup_servers({'tsserver', 'eslint'})
lsp.nvim_workspace()
lsp.setup()


-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  },
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<Tab>'] = cmp_action.luasnip_jump_forward(),
    ['<S-TAB>'] = cmp_action.luasnip_jump_backward(),
  }
})


--local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
--for type, icon in pairs(signs) do
--    local hl = "DiagnosticSign" .. type
--    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
--end
