function UseColorScheme(color)

    vim.o.termguicolors = true
    vim.o.background = 'dark'
    vim.g.rehash256 = 1
    -- vim.o.t_Co = 256
    vim.g.one_allow_italics = 1

    color = color or 'catppuccin'
    -- color = color or 'cyberdream'
    -- color = color or 'rose-pine'
    -- color = color or 'kanagawa'
	vim.cmd.colorscheme(color)


    --=== COFIG ENV if we don't has a colorscheme
    vim.cmd('hi Normal ctermbg=NONE')
    vim.cmd('hi Folded cterm=NONE ctermbg=Black ctermfg=White')
    vim.cmd('hi Comment gui=italic')

    --=== CURSOR
    vim.cmd('hi! Cursor ctermbg=Red guibg=Red ctermfg=Red guifg=Red')

    --=== CURSORLINE
    vim.o.cursorline = true
    vim.cmd('hi CursorLine ctermbg=green guibg=#152215')
    vim.cmd('hi CursorLineNr ctermbg=Black')
    vim.cmd('hi LineNr ctermbg=Black')

    --=== COLOR COLUMN
    -- vim.o.colorcolumn = '80'
    -- vim.cmd('hi ColorColumn ctermbg=gray guibg=gray')

    vim.cmd('hi SpellBad guibg=#D00000 guifg=#ffffff')

end

UseColorScheme()
