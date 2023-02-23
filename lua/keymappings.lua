--[[--
--    FUNTION TO MAPPING
--]]
local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end


--[[--
--    GLOBAL MAPPING
--]]

--Key leader
vim.g.mapleader = ';'

--MODES
--nmap => n
--

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
mapper("n", "<TAB>", "gt")
--Prev tab
mapper("n", "<S-TAB>", "gT")
--Move next tab
mapper("n", "<Leader>.", ":tabmove +<CR>")
--Move prev tab
mapper("n", "<Leader>,", ":tabmove -<CR>")
--New tab
mapper("n", "<Leader>t", ":tabnew<CR>")


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



--[[--
--    BUFFERS
--]]
--Delete buffers
mapper("n", "<Leader>bd", ":bd<CR>")
--List buffers
mapper("n", "<Leader>bl", ":buffers<CR>")
--Buffer next
mapper("n", "<Leader>bn", ":bnext<CR>")
--Buffer previous
mapper("n", "<Leader>bp", ":bprevious<CR>")



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
mapper("n", "<Leader>e", ":Files<CR>")


--[[--
--    NERDTree
--]]
--Open nerdtree
mapper("n", "<Leader>nt", ":NERDTreeFind<CR>")
--Reload nerdtree
mapper("n", "<Leader>nr", ":NERDTreeRefreshRoot<CR>")


--[[--
--    RANGER
--]]
--Open ranger
mapper("n", "<Leader>f", ":RnvimrToggle<CR>")


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

vim.cmd([[
  "=== Bookmarks ===
  let g:bookmark_no_default_key_mappings = 0

  nmap <Leader>bm <Plug>BookmarkToggle
  nmap <Leader>bi <Plug>BookmarkAnnotate
  nmap <Leader>ba <Plug>BookmarkShowAll
  nmap <Leader>bj <Plug>BookmarkNext
  nmap <Leader>bk <Plug>BookmarkPrev
  nmap <Leader>bc <Plug>BookmarkClear
  nmap <Leader>bx <Plug>BookmarkClearAll
  nmap <Leader>kk <Plug>BookmarkMoveUp
  nmap <Leader>jj <Plug>BookmarkMoveDown
  nmap <Leader>gg <Plug>BookmarkMoveToLine
]])


--[[--
--    NERD COMMENT
--]]
vim.cmd([[
  "=== NERD COMMENT ===
  " *** Comment actual line or selected
  nmap <Leader>cc NERDCommenterComment<CR>
  " *** Equal of cc but anidate
  nmap <Leader>cn NERDCommenterNested<CR>
  " *** Comment selected line with a pretty design with block format
  nmap <Leader>cy NERDCommenterYank<CR>
  " *** Comment the actual line since cursor to final
  nmap <Leader>c$ NERDCommenterToEOL<CR>
  " *** Add delimiter of comment to final of line and go mode of insert
  nmap <Leader>cA NERDCommenterAppend<CR>
  " *** Delete comment of lineDCommenterComment
  nmap <Leader>cu NERDCommenterUncomment<CR>


]])


--[[--
--    COC MARKDOWN
--]]
-- Open markdown
mapper("n", "<Leader>om", ":CocCommand markdown-preview-enhanced.openPreview<CR>");
