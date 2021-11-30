let mapleader=" "


colorscheme gruvbox
let g:user_emmet_leader_key='<C-Z>'
set viminfo='1000
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
set noswapfile
set clipboard=unnamedplus
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent
filetype plugin indent on
set showmatch
filetype plugin indent on    " required
set nu
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start
set signcolumn=yes
" set ic
" filetype off                  " required


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

let g:onedark_terminal_italics = 1
let s:fontsize = 20
let g:diagnostic_enable_virtual_text = 0
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
let g:airline#extensions#tabline#enabled = 1
