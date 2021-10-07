autocmd BufWritePost *.api :silent call ApiFormat()

func! ApiFormat()
    exec "!goctl api validate %"
    exec "!goctl api format --dir ."
    exec ":e"
endfunction
