return {
    'mhinz/vim-startify',
    config = function()
        -- Configurar startify con todas las opciones en VimScript
        vim.cmd([[
        " Ordenar listas - Sesiones primero
        let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   󰒲 Sessions']       },
        \ { 'type': 'files',     'header': ['   󰈔 Recent Files']   },
        \ { 'type': 'dir',       'header': ['   󰉋 Current Directory'] },
        \ { 'type': 'bookmarks', 'header': ['   󰃀 Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   󰘳 Commands']       },
        \ ]

        " Configuraciones adicionales
        let g:startify_session_persistence = 1
        let g:startify_change_to_vcs_root = 1
        let g:startify_files_number = 10
        let g:startify_session_autoload = 1
        let g:startify_session_delete_buffers = 1
        let g:startify_update_oldfiles = 1
        let g:startify_enable_special = 1

        " Ignorar ciertos archivos
        let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'plugged/.*',
        \ 'fugitiveblame$',
        \ '\.git',
        \ 'node_modules',
        \ '\.pyc$',
        \ '\.swp$',
        \ '\.swo$',
        \ '\.o$',
        \ ]

       

        " Atajos de teclado personalizados
        autocmd FileType startify nnoremap <buffer> s :SLoad<CR>
        autocmd FileType startify nnoremap <buffer> S :SSave<CR>
        autocmd FileType startify nnoremap <buffer> d :SDelete<CR>
        autocmd FileType startify nnoremap <buffer> q :qa<CR>
        ]])
    end
}

 -- " Personalizar encabezado
 --        let g:startify_custom_header = [
 --        \ '   ╔══════════════════════════════════════════╗',
 --        \ '   ║                                          ║',
 --        \ '   ║                N E O V I M               ║',
 --        \ '   ║                                          ║',
 --        \ '   ╚══════════════════════════════════════════╝',
 --        \ ]
