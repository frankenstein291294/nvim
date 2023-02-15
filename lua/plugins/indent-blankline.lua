-- Simple

--vim.opt.list = true
--vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")
--vim.opt.termguicolors = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_end_of_line = true,
    buftype_exclude = {"terminal"},
    filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer"},
}


-- Indent blankline char highlight list

--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

--require("indent_blankline").setup {
  --space_char_blankline = " ",
  --show_end_of_line = true,
  --buftype_exclude = {"terminal"},
  --filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer"},
  --char_highlight_list = {
    --"IndentBlanklineIndent1",
    --"IndentBlanklineIndent2",
    --"IndentBlanklineIndent3",
    --"IndentBlanklineIndent4",
    --"IndentBlanklineIndent5",
    --"IndentBlanklineIndent6",
    --},
--}


--  Indent blankline with custom background highlight

--vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]

--require("indent_blankline").setup {
    --char = "",
    --show_end_of_line = true,
    --buftype_exclude = {"terminal"},
    --filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer"},
    --char_highlight_list = {
        --"IndentBlanklineIndent1",
        --"IndentBlanklineIndent2",
    --},
    --space_char_highlight_list = {
        --"IndentBlanklineIndent1",
        --"IndentBlanklineIndent2",
    --},
    --show_trailing_blankline_indent = false,
--}



-- Indent blankline with content indent highlighted by treesitter

--require("indent_blankline").setup {
    --buftype_exclude = {"terminal"},
    --filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer"},
    --space_char_blankline = " ",
    --show_current_context = true,
    --show_current_context_start = true,
    --context_patterns = {
        --"class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object", "^table", "block", "arguments", "if_statement",
        --"else_clause", "jsx_element", "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement", "operation_type"
    --}
--}

