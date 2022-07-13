autocmd BufNewFile,BufRead *.six setf sixel

function! s:isSixel()
    if getline(1) =~ '^\(Pq\|P;[012];[0-9]\+q\|P[0-9];[012];[0-9]\+q\)'
        setfiletype sixel
    endif
endfunction

autocmd BufNewFile,BufRead * if !did_filetype() && s:isSixel()
