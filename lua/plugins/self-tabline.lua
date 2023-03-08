vim.cmd([[
set tabline=%!MyTabLine()  " custom tab pages line

function! MyTabLine()
  let s = ''
  "#########################################
  "############## TABLINE ##################
  "#########################################
  for i in range(tabpagenr('$')) "For to each TAB
    if (i + 1) == tabpagenr()
      hi User1 guibg=#006ff1 guifg=#ffffff
      let s .= '%1*'
      "let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " if (i + 1) == tabpagenr()
    "   let s .= '%#TabLineSel#' " WildMenu
    " else
    "   let s .= '%#Title#'
    " endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T '
    " set page number string
    let s .= i + 1
    " get buffer names and statuses
    let n = ''  " temp str for buf names
    let m = 0   " &modified counter

    let buflist = tabpagebuflist(i + 1)

    " loop through each buffer in a tab
    for b in buflist
 
      "if getbufvar(b, "&buftype") == 'help'
      "   " let n .= '[H]' . fnamemodify(bufname(b), ':t:s/.txt$//')
      "elseif getbufvar(b, "&buftype") == 'quickfix'
      "   " let n .= '[Q]'
      "elseif getbufvar(b, "&modifiable")
        "let nf .= fnamemodify(bufname(b), ':t') . ', ' " pathshorten(bufname(b))
      "endif
      
      if getbufvar(b, "&modified")
        let m += 1
      endif
    endfor
    
    if getbufvar(buflist[0], "&modifiable")
	    let n .= fnamemodify(bufname(buflist[0]), ':t') . ', ' " pathshorten(bufname(b))
    endif
 
    let n = substitute(n, ', $', '', '')
    
     if i + 1 == tabpagenr()
      hi User1 guibg=#006ff1 guifg=#ffffff
      let s .= '%1*'
      "let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " add buffer names
    if n == ''
      let s.= '[new]'
    else
      let s .= '. ' . n
    endif
    
    " add modified label
    if m > 0
      let s .= '[+]'
      " let s .= '[' . m . '+]'
    endif

    " switch to no underlining and add final space
    let s .= ' '
  endfor

  let s .= '%#TabLineFill#%T'
  let s .= '%='


  "#########################################
  "############## BUFFERLINE ###############
  "#########################################
  let sb = ''

  " loop through each tab page
  for i in range(tabpagenr('$')) "FOR PAGES ========================
    " set the tab page number (for mouse clicks)
    let sb .= '%' . (i + 1) . 'T '
    " set page number string
    "let sb .= i + 1

    if (i + 1) == tabpagenr()
      let nbf = ''  " temp str for buf names
      let mod = 0   " &modified counter

      let buferlist = tabpagebuflist(i + 1)

      " loop through each buffer in a tab
      for b in buferlist "FOR BUFFERS ========================
        if getbufvar(b, "&modifiable")
          let nbf .= '[' . fnamemodify(bufname(b), ':t') . '] ' " pathshorten(bufname(b))
        endif
        "let nbf = substitute(nbf, ', $', ' ', '')

        " add buffer names
        if (i + 1) == tabpagenr()
          let sb .= ' %#TabLineSel#'
        else
          let sb .= '%#TabLine#'
        endif

      endfor

      if nbf == ''
        let sb.= '[new]'
      else
        let sb.= nbf
      endif

      

    else
      let sb .= '%#TabLine#'
    endif

    " switch to no underlining and add final space
    if (i + 1) == tabpagenr()
      let sb .= ''
    else
      let sb .= '[' . (i + 1) . ']'
    endif

  endfor

  let s .=  sb 
  
  " right-aligned close button
  if tabpagenr('$') > 1
    let s .= ' %#TabLineFill# %999Xx '
  endif
  return s
endfunction

]])
