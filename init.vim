call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree' " 폴더 구조 보여줌 그냥 필수
Plug 'tpope/vim-surround' " 텍스트 감싸서 처리 할 수 있음 abc -> ysiw' -> 'abc'
Plug 'tpope/vim-commentary' " gc로 주석처리
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() } }

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
Plug 'elixir-editors/vim-elixir'
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
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
\'coc-fzf-preview',
\'coc-ultisnips',
\'coc-elixir',
\'coc-neosnippet']

colorscheme gruvbox
"fd 설치후 brew install fd -> ~/.zshrc에 추가해주면 gitifnore에 등록 된애들은
"뺌
" export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'


let mapleader=" "

let g:user_emmet_leader_key='<C-Z>'
set autoindent
set nopaste
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
" set clipboard=unnamed
set noswapfile
set clipboard=unnamedplus
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent



" set ic
" filetype off                  " required
filetype plugin indent on


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
" nnoremap <silent><space> <ESC>:NERDTreeToggle<CR>
nnoremap <C-n> <ESC>:NERDTreeToggle<CR>
imap <C-n> <ESC>:NERDTreeToggle<CR>
"start FZF 
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> \ :Buffers<CR>
"end FZF
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <F3> :<C-u>CocList diagnostics<cr>
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
" nnoremap <silent> <space>cf :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

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
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
" nmap <silent><leader><space>c <Plug>(coc-codelens-action)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
nmap <TAB><TAB> a<TAB>
nmap <F9> :Git status<CR>
nmap <F10> :Gdiffsplit<CR>
nmap <F11> :Git add %:p<CR>

" nmap <leader>B ysiBBysaB`a$<ESC>
 imap <C-h> <C-o>h
 imap <C-j> <C-g>j
 imap <C-k> <C-g>k
 imap <C-l> <Right>

map  <C-s> <Plug>(easymotion-bd-f)
nmap <C-s> <Plug>(easymotion-overwin-f)
nmap <Leader><Leader> <Plug>BookmarkToggle
nmap <Leader>b <Plug>BookmarkShowAll
nmap <Leader>x <Plug>BookmarkClearAll

nmap <F8> :TagbarToggle<CR>
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
let g:bookmark_no_default_key_mappings = 1


"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger="<Tab>"
"let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips']
""let g:UltiSnipsSnippetDirectories = ['UltiSnips']

" nmap <Leader>s :Startify<CR>
let g:EasyMotion_do_mapping = 0


"yank to clibboard window용
let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
	    augroup WSLYank
			autocmd!
			autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
		augroup END
end


