
vim = vim or  {}

-- Delete spaces after  code in lines
vim.cmd([[
  augroup AuBufWritePre
    autocmd!
    autocmd BufWritePre * let current_pos = getpos(".")
    autocmd BufWritePre * silent! undojoin | %s/\s\+$//e
    autocmd BufWritePre * silent! undojoin | %s/\n\+\%$//e
    autocmd BufWritePre * call setpos(".", current_pos)
    autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')
  augroup END
]])


-- Mark when selected something with yank
vim.cmd([[
    augroup AuYank
        autocmd!
        autocmd TextYankPost *
        \ lua vim.highlight.on_yank{higroup="IncSearch", timeout=500, on_visual=true}
    augroup END
]])
