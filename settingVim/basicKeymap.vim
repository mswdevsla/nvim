nnoremap <silent> <Leader>co  :<C-u>CocList outline<CR>
nnoremap <Leader>rc :rightbelow vnew ~/.config/nvim/init.vim<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <Leader><Leader> :w<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>. :NERDTreeFind<CR>
nnoremap <Leader>ex :Vex<CR>
inoremap jk <ESC>
inoremap kj <ESC>

nnoremap <Leader>p viwp
" nnoremap <silent><space> <ESC>:NERDTreeToggle<CR>
nnoremap <C-n> <ESC>:NERDTreeToggle<CR>
imap <C-n> <ESC>:NERDTreeToggle<CR>
imap jk <ESC>
imap kj <ESC>



"start FZF 
nnoremap <silent> <Leader>f :FZF<CR>
"end FZF
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <F3> :<C-u>CocList diagnostics<cr>
nnoremap <Leader>3 :b#<CR>      " previous buffer
nnoremap <Leader>4 :bn<CR>      " next buffer
nnoremap <Leader>2 :bp<CR>      " 이전 buffer
nnoremap <Leader>5 :Buffers<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>z  <Plug>(coc-fix-current)
imap cll console.log(<Esc>==f(a
nmap cll yiwocll<Esc>p 
vmap cll yocll<Esc>p
imap arwf ()=>{}<ESC>ciB<CR>
imap <C-j> <C-g>j
imap <C-k> <C-g>k
imap <C-l> <Right>
imap <C-h> <C-o>h
nnoremap va ggVG
noremap <silent> <leader><cr> :noh<cr>
nnoremap B ^
nnoremap E $



nmap <Up> <C-W>2+
nmap <Down> <C-W>2-
nmap <Left> <C-W>2<
nmap <Right> <C-W>2>
