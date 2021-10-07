function goctl#Format() abort
    exec "silent !goctl api format --dir . | e"
endfunction

" func! GoctlDiagnostic()
"     exec "!goctl api validate --api %"
" endfunction
    

" autocmd BufWritePre *.api :silent call GoctlDiagnostic()
autocmd BufWritePost *.api :silent call goctl#Format()

autocmd FileType goctl nmap bd :!goctl api go -api % -dir %:h<CR>
