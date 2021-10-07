function! goctl#Format()
    let mes = execute("!goctl api format --dir .")
    echo $mes
    call goctl#Refresh()
endfunction

function goctl#Refresh()
    exec "e"
endfunction

" func! GoctlDiagnostic()
"     exec "!goctl api validate --api %"
" endfunction
    

" autocmd BufWritePre *.api :silent call GoctlDiagnostic()
autocmd BufWritePost *.api :silent call goctl#Format()

autocmd FileType goctl nmap bd :!goctl api go -api % -dir %:h<CR>
