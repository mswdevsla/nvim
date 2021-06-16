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
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'tpope/vim-rails'
Plug 'easymotion/vim-easymotion'
" Plug 'scrooloose/nerdcommenter'
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
Plug 'mhinz/vim-mix-format'
" Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins'  }
Plug 'SirVer/ultisnips'
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'slashmili/alchemist.vim'  " elixir 임 지금은 coc 보다 이게나음
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'vim-scripts/BufOnly.vim'
call plug#end()

"fd 설치후 brew install fd -> ~/.zshrc에 추가해주면 gitifnore에 등록 된애들은
"뺌
" export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

source $HOME/.config/nvim/settingVim/basicset.vim
source $HOME/.config/nvim/settingVim/basicKeymap.vim
source $HOME/.config/nvim/settingVim/autocomplete.vim
source $HOME/.config/nvim/settingVim/coc.vim
source $HOME/.config/nvim/settingVim/highlightset.vim
source $HOME/.config/nvim/settingVim/gitset.vim
source $HOME/.config/nvim/settingVim/bookmark.vim
source $HOME/.config/nvim/settingVim/ultisnips.vim
source $HOME/.config/nvim/settingVim/fzfset.vim
source $HOME/.config/nvim/settingVim/windowset.vim
source $HOME/.config/nvim/settingVim/nerdtree.vim
source $HOME/.config/nvim/settingVim/easymotion.vim
source $HOME/.config/nvim/settingVim/elixir.vim
