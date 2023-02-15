
vim.cmd([[ 
let g:startify_session_autoload = 1
function! GetUniqueSessionName() 
let path = fnamemodify(getcwd(), ':~:t') 
let path = empty(path) ? 'no-project' : path 
let branch = gitbranch#name() 
let branch = empty(branch) ? '' : '-' . branch 
return substitute(path . branch, '/', '-', 'g') 
endfunction 

autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName() 
autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName() 
]]) 

