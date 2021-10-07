autocmd BufWritePost *.api :silent call ApiFormat()

autocmd FileType goctl nmap bd :!goctl api go -api % -dir %:h<CR>
