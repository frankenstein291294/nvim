vim.cmd([[


let g:type_statusline = 'default'
"##########################################################################
"############################# DEFAULT ####################################
"##########################################################################
function! StatuslineDefault() abort
  return "%t%=%l,%c\ %p%%            "
endfunction
"##########################################################################
"############################# BASIC 1 ####################################
"##########################################################################
function! StatuslineBasic1() abort
  return "%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P"
endfunction

"##########################################################################
"############################# BASIC 2 ####################################
"##########################################################################
function! StatuslineBasic2() abort
  return "%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P"
endfunction

"##########################################################################
"############################# BASIC 3 ####################################
"##########################################################################
function! StatuslineBasic3() abort
  return "%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'"
endfunction

"##########################################################################
"############################# BASIC 4 ####################################
"##########################################################################
function! StatuslineBasic4() abort
  return " %t %r %m%=%y\ [%{''.(&fenc!=''?&fenc:&enc).''}] %p%% row:%l-%L\ col:%c "
endfunction

"##########################################################################
"############################# BASIC 5 ####################################
"##########################################################################
function! StatuslineBasic5() abort
  return " %t %r %m%= (%p%%) row:%l-%L\ col:%c "
endfunction

"##########################################################################
"############################# COLOR 1 ####################################
"##########################################################################
function! StatuslineColor1() abort
  hi user1 guibg=#6272a4 guifg=#ffffff
  hi user2 guibg=#1f8e20 guifg=#ffffff
  hi user3 guibg=#44475a guifg=#ffffff

  return "%1*\ %t\ %r\ %2*%m%3*%=%y\ %3*\ [%{''.(&fenc!=''?&fenc:&enc).''}]%3* %p%% row:%l-%L\ col:%c "
endfunction

"##########################################################################
"############################# COLOR 2 ####################################
"##########################################################################
function! StatuslineColor2() abort
  hi user1 guibg=#6272a4 guifg=#ffffff
  hi user2 guibg=#1f8e20 guifg=#ffffff
  hi user3 guibg=#44475a guifg=#ffffff

  return "%1*\ %t\ %r\ %2*%m%3*%=%y\ %3*\ [%{''.(&fenc!=''?&fenc:&enc).''}\ ]  %3*\ %p%% %l:%L\ %c\ "
endfunction

"##########################################################################
"############################# COLOR 3 ####################################
"##########################################################################
function! StatuslineColor3() abort
  hi User1 guibg=#006FF1 guifg=#ffffff gui=bold
  hi User2 guibg=#444444 guifg=#000000
  hi User3 guibg=#7A9024 guifg=#ffffff gui=italic
  hi User4 guibg=#DC8E18 guifg=#000000 gui=bold
  hi User5 guibg=#7E07FA guifg=#ffffff gui=italic

  return "%1* %t%r %m%2*%= %3* %y %4* %p%% %5* %l ☰ %L\ col:%c "
endfunction

"##########################################################################
"############################# COLOR 4 ####################################
"##########################################################################
function! StatuslineColor4Normal() abort
  hi User1 guibg=#92BFF4 guifg=#ffffff gui=bold
  hi User2 guibg=#006FF1 guifg=#ffffff gui=bold
  hi User3 guibg=#444444 guifg=#ffffff
  hi User4 guibg=#7A9024 guifg=#ffffff gui=italic
  hi User5 guibg=#DC8E18 guifg=#000000 gui=bold
  hi User6 guibg=#7E07FA guifg=#ffffff gui=italic

  return "%2* NORMAL %3*  %t%r %m%3*%= %4* %y %5* %p%% %6* %l of %L\ col:%c "
endfunction

function! StatuslineColor4Insert() abort
  hi User1 guibg=#50fa7b guifg=#585656 gui=bold
  hi User2 guibg=#006FF1 guifg=#ffffff gui=bold
  hi User3 guibg=#444444 guifg=#ffffff
  hi User4 guibg=#7A9024 guifg=#ffffff gui=italic
  hi User5 guibg=#DC8E18 guifg=#000000 gui=bold
  hi User6 guibg=#7E07FA guifg=#ffffff gui=italic

  return "%1* INSERT %3*  %t%r %m%3*%= %4* %y %5* %p%% %6* %l of %L\ col:%c "
endfunction

function! StatuslineColor4Visual() abort
  hi User1 guibg=#f1fa8c guifg=#000000 gui=bold
  hi User2 guibg=#006FF1 guifg=#ffffff gui=bold
  hi User3 guibg=#444444 guifg=#ffffff
  hi User4 guibg=#7A9024 guifg=#ffffff gui=italic
  hi User5 guibg=#DC8E18 guifg=#000000 gui=bold
  hi User6 guibg=#7E07FA guifg=#ffffff gui=italic

  return "%1* VISUAL %3*  %t%r %m%3*%= %4* %y %5* %p%% %6* %l of %L\ col:%c "
endfunction

"=== FUNCTION TO CHANGE OF NORMAL TO INSERT ===
function! InsertStatuslineColor4(mode)
  if a:mode == 'i'
    set stl=%{%StatuslineColor4Insert()%}
  endif
endfunction

"=== FUNCTION TO VISUAL MODE ===
function! CursorLineNrColorVisual4(mode)
  if mode()=~#"^[vV\<C-v>]"
    set stl=%{%StatuslineColor4Visual()%}
  else
    set stl=%{%StatuslineColor4Normal()%}
  endif
endfunction

"##########################################################################
"################### AIRLINE - DRACULA ####################################
"##########################################################################
"---statusline normal
function! StatuslineAirlineNormal() abort
hi user1 guibg=#bd93f9 guifg=#000000 gui=bold
hi user2 guibg=#44475a guifg=#ffffff
hi User3 guibg=#6272a4 guifg=#ffffff
hi User4 guibg=#1f8e20 guifg=#ffffff
  return "%1*\ NORMAL %2*\ %t\ %r\%4*%m%2*%=%Y\ %3*\ %{''.(&fenc!=''?&fenc:&enc).''}\   %1*\ %p%% %l:%L\ %c\ "
endfunction

"---statusline insert
function! StatuslineAirlineInsert() abort
hi user5 guibg=#50fa7b guifg=#000000 gui=bold
hi user2 guibg=#44475a guifg=#ffffff
hi User3 guibg=#6272a4 guifg=#ffffff
hi User4 guibg=#1f8e20 guifg=#ffffff
  return "%1*\ INSERT %2*\ %t\ %r\%4*%m%2*%=%Y\ %3*\ %{''.(&fenc!=''?&fenc:&enc).''}\   %1*\ %p%% %l:%L\ %c\ "
endfunction

"---statusline visual
function! StatuslineAirlineVisual() abort
hi user6 guibg=#f1fa8c guifg=#000000 gui=bold
hi user2 guibg=#44475a guifg=#ffffff
hi User3 guibg=#6272a4 guifg=#ffffff
hi User4 guibg=#1f8e20 guifg=#ffffff
  return "%1*\ VISUAL %2*\ %t\ %r\%3*%m %2*%=%Y\ %2*\ %{''.(&fenc!=''?&fenc:&enc).''}\   %3*\ %p%% %l:%L\ %c\ "
endfunction

"=== FUNCTION TO CHANGE OF NORMAL TO INSERT ===
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    set stl=%{%StatuslineAirlineInsert()%}
  endif
endfunction

"=== FUNCTION TO VISUAL MODE ===
function! CursorLineNrColorVisual(mode)
  if mode()=~#"^[vV\<C-v>]"
    set stl=%{%StatuslineAirlineVisual()%}
  else
    set stl=%{%StatuslineAirlineNormal()%}
  endif
endfunction

"##########################################################################
"################### EXECUTE STATUSLINE ###################################
"##########################################################################

let g:type_statusline = 'color3'


if g:type_statusline == 'default'
  set stl=%{%StatuslineDefault()%}

elseif g:type_statusline == 'basic1'
  set stl=%{%StatuslineBasic1()%}

elseif g:type_statusline == 'basic2'
  set stl=%{%StatuslineBasic2()%}

elseif g:type_statusline == 'basic3'
  set stl=%{%StatuslineBasic3()%}

elseif g:type_statusline == 'basic4'
  set stl=%{%StatuslineBasic4()%}

elseif g:type_statusline == 'basic5'
  set stl=%{%StatuslineBasic5()%}

elseif g:type_statusline == 'color1'
  hi user1 guibg=#6272a4 guifg=#ffffff
  hi user2 guibg=#1f8e20 guifg=#ffffff
  hi user3 guibg=#44475a guifg=#ffffff
  set stl=%{%StatuslineColor1()%}

elseif g:type_statusline == 'color2'
  hi user1 guibg=#6272a4 guifg=#ffffff
  hi user2 guibg=#1f8e20 guifg=#ffffff
  hi user3 guibg=#44475a guifg=#ffffff
  set stl=%{%StatuslineColor2()%}

elseif g:type_statusline == 'color3'
  hi User1 guibg=#006FF1 guifg=#ffffff gui=bold
  hi User2 guibg=#444444 guifg=#ffffff
  hi User3 guibg=#7A9024 guifg=#ffffff gui=italic
  hi User4 guibg=#DC8E18 guifg=#000000 gui=bold
  hi User5 guibg=#7E07FA guifg=#ffffff gui=italic
  set stl=%{%StatuslineColor3()%}

elseif g:type_statusline == 'color4'
  hi User1 guibg=#92BFF4 guifg=#585656 gui=bold
  hi User2 guibg=#006FF1 guifg=#ffffff gui=bold
  hi User3 guibg=#444444 guifg=#ffffff
  hi User4 guibg=#7A9024 guifg=#ffffff gui=italic
  hi User5 guibg=#DC8E18 guifg=#000000 gui=bold
  hi User6 guibg=#7E07FA guifg=#ffffff gui=italic

  au InsertEnter * call InsertStatuslineColor4(v:insertmode)
  au InsertEnter * hi User1 guibg=#50fa7b guifg=#585656 gui=bold
  au InsertChange * call InsertStatuslineColor4(v:insertmode)
  au InsertLeave * set stl=%{%StatuslineColor4Normal()%}
  autocmd CursorMoved * call CursorLineNrColorVisual4(v:insertmode)
  set stl=%{%StatuslineColor4Normal()%}
  
elseif g:type_statusline == 'airline'
  hi user1 guibg=#bd93f9 guifg=#000000 gui=bold
  hi user5 guibg=#50fa7b guifg=#000000 gui=bold
  hi user6 guibg=#f1fa8c guifg=#000000 gui=bold

  au InsertEnter * call InsertStatuslineColor(v:insertmode)
  au InsertChange * call InsertStatuslineColor(v:insertmode)
  au InsertLeave * set stl=%{%StatuslineAirlineNormal()%}
  autocmd CursorMoved * call CursorLineNrColorVisual(v:insertmode)
  set stl=%{%StatuslineAirlineNormal()%}

endif


]])
