set tags=tags;
map <c-]> g<c-]> 
" autocmd BufWritePost * call system("ctags -R")


