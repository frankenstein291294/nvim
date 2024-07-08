
vim.g.floaterm_keymap_kill      = '<F10>'
vim.g.floaterm_keymap_new       = '<F7>'
vim.g.floaterm_keymap_prev      = '<F8>'
vim.g.floaterm_keymap_next      = '<F9>'
vim.g.floaterm_keymap_toggle    = '<F6>'

-- Set floaterm windows background to black
vim.cmd('hi Floaterm guibg=black')

-- Set floating window border line color to cyan, and background to orange
vim.cmd('hi FloatermBorder guibg=gray guifg=cyan')

vim.cmd('hi FloatermNC guifg=red')
