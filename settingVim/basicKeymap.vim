nnoremap <silent> <Leader>co  :<C-u>CocList outline<CR>
nnoremap <Leader>rc :rightbelow vnew ~/.config/nvim/init.vim<CR>
nnoremap <Left> <C-w>h
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Right> <C-w>l
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <Leader><Leader> :w<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>ex :Vex<CR>
inoremap jk <ESC>
inoremap kj <ESC>
inoremap <C-d> <BS>

nnoremap - :vertical resize -5<CR>
nnoremap = :vertical resize +5<CR>

nnoremap <Leader>p ciw<C-r>0<Esc>
nnoremap <Leader>P viw"+p<Esc>
" nnoremap <silent><space> <ESC>:NERDTreeToggle<CR>
imap jk <CR>
imap kj <CR>



nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <F3> :<C-u>CocList diagnostics<cr>
nnoremap <Leader>3 :b#<CR>      " previous buffer
nnoremap <Leader>4 :bn<CR>      " next buffer
nnoremap <Leader>2 :bp<CR>      " 이전 buffer
nnoremap <Leader>5 :Buffers<CR>
nnoremap <Leader>6 :BufOnly<CR>
imap cll console.log(
nmap cll yiwocll<Esc>p 
vmap cll yocll<Esc>p
nmap cm a<<C-r>0/><ESC>Bea<Space>
imap arwf  () => {}<ESC>F(a
imap <C-j> <C-g>j
imap <C-k> <C-g>k
imap <C-l> <Right>
imap <C-h> <C-o>h
nnoremap vA ggVG
noremap <silent> <leader><cr> :noh<cr>
nnoremap B ^
nnoremap E $
noremap <Leader>; :%s:::g<Left><Left><Left>
noremap <Leader>' :%s:::gc<Left><Left><Left><Left>


nnoremap <silent><F2> 
	\:botright new<CR><bar>
	\:terminal<CR><bar><ESC>
	\:resize 10<CR><bar>
	\:set winfixheight<CR><bar>
	\:set nonu<CR><bar>
	\iLS_COLORS=$LS_COLORS:'di=1;33:ln=36'<CR>
