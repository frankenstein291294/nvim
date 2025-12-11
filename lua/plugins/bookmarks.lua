return {
    'MattesGroeger/vim-bookmarks',
    opts = {},
    config = function ()
        vim.g.airline_extensions_bookmark_enabled = 1

        vim.cmd('highlight BookmarkSign ctermbg=NONE ctermfg=160')
        vim.cmd('highlight BookmarkLine ctermbg=194 ctermfg=NONE')
        vim.g.bookmark_sign = '❤️'
        vim.g.bookmark_highlight_lines = 1
    end
}
