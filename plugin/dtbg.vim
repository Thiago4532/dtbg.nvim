if !exists("g:terminal_background") && !empty($TERM_BG_COLOR)
    let g:terminal_background=$TERM_BG_COLOR
endif

if exists("g:terminal_background")
    autocmd VimEnter,VimResume * call dtbg#SetTerminalColor(synIDattr(synIDtrans(hlID("Normal")), "bg#"))
    autocmd VimLeave,VimSuspend * call dtbg#SetTerminalColor(g:terminal_background)
endif
