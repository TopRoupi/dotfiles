call plug#begin('~/.vim/plugged')
" utils
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'
Plug 'ap/vim-css-color'
Plug 'int3/vim-extradite'
Plug 'tomtom/tcomment_vim'
Plug 'jpo/vim-railscasts-theme'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'

Plug 'voldikss/vim-floaterm'

"language support
Plug 'tpope/vim-haml', { 'for': ['haml'] }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'othree/html5.vim'
Plug 'stephpy/vim-yaml'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'dag/vim-fish'

Plug 'hsanson/vim-android'
Plug 'udalov/kotlin-vim'

" file explorer
Plug 'scrooloose/nerdtree'|
      \ Plug 'Xuyuanp/nerdtree-git-plugin'

" status line and tab line
Plug 'itchyny/lightline.vim'
Plug 'KeitaNakamura/lightline-railscasts.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'maximbaz/lightline-ale'

" fuzzysearch
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" language server
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
    \ }

" autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'fishbullet/deoplete-ruby'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

