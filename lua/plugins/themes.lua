vim.cmd([[
  set termguicolors
  set background=dark
  let g:rehash256 = 1
  set t_Co=256
  let g:one_allow_italics = 1

  " SETTING AYU || light, dark, mirage
  "let ayucolor="mirage" 

  "colorscheme palenight
  colorscheme dracula


  "=== COFIG ENV if we don't has a colorscheme
  hi Normal ctermbg=NONE
  hi Folded cterm=NONE ctermbg=Black ctermfg=White
  hi Comment gui=italic


  "=== CURSOR
  hi! Cursor ctermbg=Red guibg=Red ctermfg=Red guifg=Red


  "=== CURSORLINE
  set cursorline
  hi CursorLine ctermbg=Black guibg=#152215
  hi CursorLineNr ctermbg=Black
  hi LineNr ctermbg=Black


  "=== COLOR COLUMN
  set colorcolumn=80
  "hi ColorColumn ctermbg=Black guibg=black


  hi SpellBad guibg=#D00000 guifg=#ffffff
]])
