
vim = vim or  {}

-- Delete spaces after  code in lines
--[[ vim.cmd([[ ]]
  --[[ augroup AuBufWritePre ]]
  --[[   autocmd! ]]
  --[[   autocmd BufWritePre * let current_pos = getpos(".") ]]
  --[[   autocmd BufWritePre * silent! undojoin | %s/\s\+$//e ]]
  --[[   autocmd BufWritePre * silent! undojoin | %s/\n\+\%$//e ]]
  --[[   autocmd BufWritePre * call setpos(".", current_pos) ]]
  --[[   autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p') ]]
  --[[ augroup END ]]
--[[ <]) ]]

-- Mark when selected something with yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({timeout=500})
  end,
  group = highlight_group,
  pattern = '*',
})
