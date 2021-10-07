function! goctl#Format() abort
    exec "!goctl api validate %"
    exec "!goctl api format --dir ."
    exec ":e"
endfunction

autocmd BufWritePost *.api :silent call ApiFormat()
