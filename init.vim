call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree' " 폴더 구조 보여줌 그냥 필수
Plug 'tpope/vim-surround' " 텍스트 감싸서 처리 할 수 있음 abc -> ysiw' -> 'abc'
Plug 'tpope/vim-commentary' " gc로 주석처리
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc 설치
Plug 'mattn/emmet-vim' " html 태그 만들어 줌 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fzf 사용
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat' " 플러그인 dot 커맨드로 ㄷ실행가능
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript' "tsx highlight
Plug 'maxmellon/vim-jsx-pretty'
Plug 'dart-lang/dart-vim-plugin' "dart 코드 지원
Plug 'mattesgroeger/vim-bookmarks'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
" Plug 'unblevable/quick-scope' " f 키로 이동할 포인트를 색으로 표시해줌
Plug 'morhetz/gruvbox' " 인텔리제이 색
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-rails'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'kana/vim-textobj-user'
Plug 'mattn/vim-textobj-url'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'thinca/vim-textobj-comment'
Plug 'universal-ctags/ctags'
Plug 'majutsushi/tagbar'
Plug 'kjwon15/vim-transparent'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins'  }
call plug#end()
"source $HOME/.config/nvim/plug-config/coc.vim
let g:coc_global_extensions =[
\'coc-css',
\'coc-eslint',
\'coc-json',
\'coc-prettier',
\'coc-python',
\'coc-snippets',
\'coc-tsserver',
\'coc-vimlsp',
\'coc-html', 
\'coc-highlight',
\'coc-lists',
\'coc-flutter',
\'coc-styled-components',
\'coc-solargraph',
\'coc-angular',
\'coc-fzf-preview']

colorscheme gruvbox
"fd 설치후 brew install fd -> ~/.zshrc에 추가해주면 gitifnore에 등록 된애들은
"뺌
" export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'


let mapleader=","

let g:user_emmet_leader_key='<C-Z>'
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set title
set wrap
set linebreak
set showmatch                            
set mouse=r
set laststatus=2
set cursorline
set hidden
set nocompatible              " be iMproved, required 
set noic
set clipboard=unnamed
set noswapfile
" set ic
filetype off                  " required

set showmatch
filetype plugin indent on    " required
set nu
set omnifunc=syntaxcomplete#Complete
syntax on
"start autocmd 
" autocmd FileType javascript set commentstring=//\ %s
" autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
autocmd FileType javascript,javascriptreact,typescript,typescriptreact setlocal commentstring={/*\ %s\ */}

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif " 마지막 수정위치 저장
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
"start autoend

set backspace=indent,eol,start


nnoremap <Leader>rc :rightbelow vnew ~/.config/nvim/init.vim<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>w :w<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>. :NERDTreeFind<CR>
nnoremap <Leader>ex :Vex<CR>
map <F3> <ESC>:NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
"start FZF 
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <F4> :Buffers<CR>
"end FZF
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <Leader>3 :b#<CR>      " previous buffer
nnoremap <Leader>n :bn<CR>      " next buffer
nnoremap <Leader>b :bp<CR>      " 이전 buffer
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
" noremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O


"입력모드에서 탭눌렀을때 진짜 탭키로 인식하게 해줌
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif



"coc-lists(word grep)
" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
"buffer 에서 검색
nnoremap <silent> <space>cf :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

"coc-list end

let g:coc_snippet_next = '<tab>'
let g:onedark_terminal_italics = 1
let s:fontsize = 20
let g:diagnostic_enable_virtual_text = 0
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
let g:coc_global_extensions = ['coc-solargraph']
let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"highlight
function! TrailingSpaceHighlights() abort
  " Hightlight trailing whitespace
  highlight Trail ctermbg=red guibg=red
  call matchadd('Trail', '\s\+$', 100)
endfunction
" set winhl=Normal:PMenu
" hi NormalFloat guibg=#262931
" " hi CocFloating ctermfg=Red guibg=#262931
" highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
" " coc.nvim color changes
"  hi  CocErrorSign ctermfg=Red  guifg=#ff0000
" " hi link CocWarningSign Number
" " hi link CocInfoSign Type
" " " Make background transparent for many things
" hi Normal ctermbg=NONE guibg=NONE
" hi NonText ctermbg=NONE guibg=NONE
" hi LineNr ctermfg=NONE guibg=NONE
" hi SignColumn ctermfg=NONE guibg=NONE
" hi StatusLine guifg=#16252b guibg=#6699CC
" hi StatusLineNC guifg=#16252b guibg=#16252b
" " Try to hide vertical spit and end of buffer symbol
" hi VertSplit gui=NONE guifg=#17252c guibg=#17252c
" hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c

" " Customize NERDTree directory
" hi NERDTreeCWD guifg=#99c794

" " Make background color transparent for git changes
" hi SignifySignAdd guibg=NONE
" hi SignifySignDelete guibg=NONE
" hi SignifySignChange guibg=NONE

" " Highlight git change signs
" hi SignifySignAdd guifg=#99c794
" hi SignifySignDelete guifg=#ec5f67
" hi SignifySignChange guifg=#c594c5
" highlight Cursor guibg=#626262
" highlight Pmenu ctermbg=gray guibg=gray
" hi Comment ctermfg=30
" highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
" highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
autocmd CursorHold * silent call CocActionAsync('highlight')
"highlight end

autocmd! ColorScheme * call TrailingSpaceHighlights()
set background=dark
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport') " import 할 때 필요 
command! -nargs=0 OR :call CocAction('runCommand', 'tsserver.organizeImports')" import 할 떄 필요 
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
xmap <leader><space>  <Plug>(coc-codeaction-selected)
nmap <leader><space>  <Plug>(coc-codeaction-selected)
nmap <silent><leader><space>c <Plug>(coc-codelens-action)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
nmap <TAB><TAB> a<TAB>
nmap <TAB>p ea<space><ESC>p
map <TAB>P bPa<space><ESC>
nmap <F9> :Git status<CR>
nmap <F10> :Gdiffsplit<CR>
nmap <F11> :Git add %:p<CR>

nmap <leader>B ysiBBysaB`a$<ESC>
imap <C-h> <C-o>h
imap <C-j> <C-g>j
imap <C-k> <C-g>k
imap <C-l> <Right>
nmap <Leader><Leader> <Plug>BookmarkToggle
nmap <Leader>a <Plug>BookmarkShowAll

map  <Leader>ef <Plug>(easymotion-bd-f)
nmap <Leader>ef <Plug>(easymotion-overwin-f)

nmap <F8> :TagbarToggle<CR>
iab cotns const
iab conts const
iab consts const
set signcolumn=yes
nmap ]h <Plug>(GitGutterNextHunk) "same as default
nmap [h <Plug>(GitGutterPrevHunk) "same as default
imap jk <ESC>

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeWinSize=60
"nnoremapirline#extensions#tabline#enabled = 1u <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv
let g:bookmark_no_default_key_mappings = 1

