--Key leader
vim.g.mapleader = ';'

--[[--
--    FUNTION TO MAPPING
--]]
local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

--vim.api.nvim_set_keymap('n', '<CR>', '<cmd>FineCmdline<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

--[[--
--    GLOBAL MAPPING
--]]

--Save File
mapper("n", "<Leader>w", ":w<CR>")
--Quit file
mapper("n", "<Leader>q", ":q<CR>")
--Clear nohlsearch
mapper("n", "<Leader>ch", ":nohlsearch<CR>")


--[[--
--    TABS
--]]
--Next tab
--mapper("n", "<TAB>", "gt")
--Prev tab
--mapper("n", "<S-TAB>", "gT")
--Move next tab
mapper("n", "<Leader>.", ":tabmove +<CR>")
--Move prev tab
mapper("n", "<Leader>,", ":tabmove -<CR>")
--New tab
mapper("n", "<Leader>nt", ":tabnew<CR>")


--[[--
--    BUFFERS
--]]
--Delete buffers
mapper("n", "<Leader>bd", ":bd<CR>")
--List buffers
mapper("n", "<Leader>bl", ":buffers<CR>")
--Buffer next
--mapper("n", "<Leader>bn", ":bnext<CR>")
mapper("n", "<TAB>", ":BufferLineCycleNext<CR>")
--Buffer previous
--mapper("n", "<Leader>bp", ":bprevious<CR>")
mapper("n", "<S-TAB>", ":BufferLineCyclePrev<CR>")
--Move next buffer
--mapper("n", "<Leader>.", ":BufferLineMoveNext<CR>")
--Move prev buffer
--mapper("n", "<Leader>,", ":BufferLineMovePrev<CR>")


--[[--
--    TODO COMMENTS
--]]
--Opens all todos
mapper("n", "<Leader>t", ":TodoLocList<CR>")


--[[--
--    WHICH KEY
--]]
--opend which key
mapper("n", "<SPACE>", "::WhichKey<CR>")


--[[--
--    PERSISTENCE
--]]
--opend which key
-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>ps", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>pl", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>pd", [[<cmd>lua require("persistence").stop()<cr>]], {})


--[[--
--    SPLITS
--]]
--Open split vertical
mapper("n", "<Leader>v", ":vsp<CR>")
--Open split horizontal
mapper("n", "<Leader>x", ":sp<CR>")
--Open split konsole
mapper("n", "<Leader>sh", ":split<CR>:ter<CR>:resize 10<CR>")


--[[--
--    RESIZE AREAS
--]]
mapper("n", "<S-h>", ":vertical resize -2<CR>")
mapper("n", "<S-l>", ":vertical resize +2<CR>")
mapper("n", "<S-k>", ":resize -2<CR>")
mapper("n", "<S-j>", ":resize +2<CR>")


--[[--
--    MOVE LINES OF CODE
--]]
mapper("n", "_", ":m .-2<CR>==")
mapper("n", "+", ":m .+1<CR>==")
mapper("v", "_", ":m '<-2<CR>gv=gv'")
mapper("v", "+", ":m '>+1<CR>gv=gv'")

mapper("n", "<Leader>dl", ":t.<CR>")


--[[--
--    OPEN BROWSERS
--]]
--Open Firefox
mapper("n", "<F12>f", ":exe ':silent !firefox % &'<CR>")
--Open Google chrome
mapper("n", "<F12>g", ":exe ':silent !google-chrome % &'<CR>")
--Open brave
mapper("n", "<F12>b", ":exe ':silent !brave % &'<CR>")



--[[--
--    OPEN FILES CONF
--]]
--Open file conf of lua
mapper("n", "<F4>", ":e ~/.config/nvim/init.lua<CR>")


--[[--
--    FZF
--]]
mapper("n", "<Leader>f", ":Files<CR>")


--[[--
--    Nvim tree
--]]
mapper("n", "<Leader>e", ":Neotree toggle<CR>")
--mapper("n", "<Leader>nr", ":NvimTreeFocus<CR>")
--mapper("n", "<Leader>nf", ":NvimTreeFindFile<CR>")
--mapper("n", "<Leader>nc", ":NvimTreeCollapse<CR>")


--[[--
--    RANGER
--]]
--Open ranger
mapper("n", "<Leader>r", ":RnvimrToggle<CR>")


--[[--
--    VIMSTARTIFY
--]]
--Main screen
mapper("n", "<Leader>ms", ":Startify<CR>");
--Save session
mapper("n", "<Leader>ss", ":SSave<CR>");
--Load session
mapper("n", "<Leader>sl", ":SLoad<CR>");
--Close session
mapper("n", "<Leader>sc", ":SClose<CR>");
--Delete session
mapper("n", "<Leader>sd", ":SDelete<CR>");



--[[--
--    BOOKMARKS
--]]
vim.g.bookmark_no_default_key_mappings = 0
mapper('n', '<Leader>bm', '<Plug>BookmarkToggle')
mapper('n', '<Leader>bi', '<Plug>BookmarkAnnotate')
mapper('n', '<Leader>ba', '<Plug>BookmarkShowAll')
mapper('n', '<Leader>bj', '<Plug>BookmarkNext')
mapper('n', '<Leader>bk', '<Plug>BookmarkPrev')
mapper('n', '<Leader>bc', '<Plug>BookmarkClear')
mapper('n', '<Leader>bx', '<Plug>BookmarkClearAll')
mapper('n', '<Leader>kk', '<Plug>BookmarkMoveUp')
mapper('n', '<Leader>jj', '<Plug>BookmarkMoveDown')
mapper('n', '<Leader>gg', '<Plug>BookmarkMoveToLine')


--[[--
--    NERD COMMENT
--]]
--=== NERD COMMENT ===
-- *** Comment actual line or selected
mapper('n', '<Leader>cc', 'NERDCommenterComment<CR>')
-- *** Equal of cc but anidate
mapper('n', '<Leader>cn', 'NERDCommenterNested<CR>')
-- *** Comment selected line with a pretty design with block format
mapper('n', '<Leader>cy', 'NERDCommenterYank<CR>')
-- *** Comment the actual line since cursor to final
mapper('n', '<Leader>c$', 'NERDCommenterToEOL<CR>')
-- *** Add delimiter of comment to final of line and go mode of insert
mapper('n', '<Leader>cA', 'NERDCommenterAppend<CR>')
-- *** Delete comment of lineDCommenterComment
mapper('n', '<Leader>cu', 'NERDCommenterUncomment<CR>')


--[[--
--    COC MARKDOWN
--]]
-- Open markdown
mapper("n", "<Leader>om", ":CocCommand markdown-preview-enhanced.openPreview<CR>");

--[[--
--    dadbod-ui
--]]
-- Open database management
mapper("n", "<Leader>nb", ":DBUI<CR>");

--[[
-- Comfortable motion
--]]
vim.g.comfortable_motion_scroll_down_key = "j"
vim.g.comfortable_motion_scroll_up_key = "k"
mapper('n', '<ScrollWheelDown>', ':call comfortable_motion#flick(30)<CR>')
mapper('n', '<ScrollWheelUp>', ':call comfortable_motion#flick(-30)<CR>')

