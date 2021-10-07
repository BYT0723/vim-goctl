" autocmd BufWritePre *.api :silent call GoctlDiagnostic()
autocmd BufWritePost *.api :silent call goctl#Format()

autocmd FileType goctl nmap bd :!goctl api go -api % -dir %:h<CR>
