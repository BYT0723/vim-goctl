function! goctl#Format() abort
    exec "!goctl api validate --api %"
    exec "!goctl api format --dir ."
    exec ":e"
endfunction

autocmd BufWritePost *.api :silent call goctl#Format()

autocmd FileType goctl nmap bd :!goctl api go -api % -dir %:h<CR>
