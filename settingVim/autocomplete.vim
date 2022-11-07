imap <silent><expr> <C-j>
			\ pumvisible() ? "\<C-n>" : "\<C-g>j"

"자동완성창 열렸을 때 C-k 키를 어떻게 쓸것인가!
imap <silent><expr> <C-k>
			\ pumvisible() ? "\<C-p>" : "\<C-g>k"

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap <silent><expr> <cr> "\C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"입력모드에서 탭눌렀을때 진짜 탭키로 인식하게 해줌
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"




" 자동완성 창에서 enter 키 눌렀을 때 

" if exists('*complete_info')
"   inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif


