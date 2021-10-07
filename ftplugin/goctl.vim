func! GoctlFormat()
    exec "silent !goctl api format --dir ."
    exec "e"
endfunction

" func! GoctlDiagnostic()
"     exec "!goctl api validate --api %"
" endfunction
    

" autocmd BufWritePre *.api :silent call GoctlDiagnostic()
autocmd BufWritePost *.api :silent call GoctlFormat()

autocmd FileType goctl nmap bd :!goctl api go -api % -dir %:h<CR>
