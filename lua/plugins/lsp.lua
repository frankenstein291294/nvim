-- Instalar Mason y mason-lspconfig primero
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {'ts_ls', 'eslint'}  -- Usar ts_ls en lugar de tsserver
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configuración base para todos los servidores LSP
local on_attach = function(client, bufnr)
  -- Keymaps
  local opts = { buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'ds', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'dh', vim.lsp.buf.signature_help, opts)
  
  vim.keymap.set({'n', 'x'}, 'gq', function()
    vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end, opts)

  vim.diagnostic.config({
    virtual_text = true,
  })
end

-- CONFIGURACIÓN MODERNA (Neovim 0.11+) - SIN lspconfig
-- Configurar TypeScript usando la nueva API
vim.lsp.start({
  name = 'typescript-language-server',
  cmd = {'typescript-language-server', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'package.json', 'tsconfig.json', 'jsconfig.json'}, { upward = true })[1]),
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = 'all',
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      }
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = 'all',
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      }
    }
  }
})

-- Configurar ESLint usando la nueva API
vim.lsp.start({
  name = 'eslint',
  cmd = {'vscode-eslint-language-server', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'.eslintrc', '.eslintrc.js', '.eslintrc.json', '.eslintrc.cjs'}, { upward = true })[1]),
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    codeAction = {
      disableRuleComment = {
        enable = true,
        location = "separateLine"
      },
      showDocumentation = {
        enable = true
      }
    },
    codeActionOnSave = {
      enable = false,
      mode = "all"
    },
    format = true,
    nodePath = "",
    onIgnoredFiles = "off",
    packageManager = "npm",
    quiet = false,
    rulesCustomizations = {},
    run = "onType",
    useESLintClass = false,
    validate = "on",
    workingDirectory = {
      mode = "location"
    },
    workingDirectories = nil,
  }
})

-- Configurar signos de diagnóstico
vim.fn.sign_define('DiagnosticSignError', {text = '✘', texthl = 'DiagnosticSignError'})
vim.fn.sign_define('DiagnosticSignWarn', {text = '▲', texthl = 'DiagnosticSignWarn'})
vim.fn.sign_define('DiagnosticSignHint', {text = '⚑', texthl = 'DiagnosticSignHint'})
vim.fn.sign_define('DiagnosticSignInfo', {text = '»', texthl = 'DiagnosticSignInfo'})

-- Configuración adicional para LSP
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    -- Aquí puedes agregar más configuraciones que se apliquen a todos los LSP
  end
})
