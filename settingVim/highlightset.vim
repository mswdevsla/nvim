"highlight
set background=dark
function! TrailingSpaceHighlights() abort
  " Hightlight trailing whitespace
  highlight Trail ctermbg=red guibg=red
  call matchadd('Trail', '\s\+$', 100)
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd! ColorScheme * call TrailingSpaceHighlights()
"highlight end

