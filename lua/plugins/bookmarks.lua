

--=== BOOKMARKS ===

-- Action	Shortcut	Command
-- Add/remove bookmark at current line	mm	:BookmarkToggle
-- Add/edit/remove annotation at current line	mi	:BookmarkAnnotate <TEXT>
-- Jump to next bookmark in buffer	mn	:BookmarkNext
-- Jump to previous bookmark in buffer	mp	:BookmarkPrev
-- Show all bookmarks (toggle)	ma	:BookmarkShowAll
-- Clear bookmarks in current buffer only	mc	:BookmarkClear
-- Clear bookmarks in all buffers	mx	:BookmarkClearAll
-- Move up bookmark at current line	[count]mkk	:BookmarkMoveUp [<COUNT>]
-- Move down bookmark at current line	[count]mjj	:BookmarkMoveDown [<COUNT>]
-- Move bookmark at current line to another line	[count]mg	:BookmarkMoveToLine <LINE>
-- Save all bookmarks to a file		:BookmarkSave <FILE_PATH>
-- Load bookmarks from a file		:BookmarkLoad <FILE_PATH>

--*** Enable bookmarks to star nvim

vim.g.airline_extensions_bookmark_enabled = 1

vim.cmd('highlight BookmarkSign ctermbg=NONE ctermfg=160')
vim.cmd('highlight BookmarkLine ctermbg=194 ctermfg=NONE')
vim.g.bookmark_sign = '❤️'
vim.g.bookmark_highlight_lines = 1

