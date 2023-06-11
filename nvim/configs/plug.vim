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
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'wfxr/minimap.vim'
Plug 'LnL7/vim-nix'
Plug 'ryanoasis/vim-devicons'
" Plug 'dense-analysis/ale'

"themes
Plug 'jpo/vim-railscasts-theme'
Plug 'gruvbox-material'
" Plug 'KeitaNakamura/railscasts.vim'
" Plug 'carakan/new-railscasts-theme'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'erichdongubler/vim-sublime-monokai'
" Plug 'crusoexia/vim-monokai'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'sjl/badwolf'

"terminal
Plug 'voldikss/vim-floaterm'
Plug 'vimlab/split-term.vim'

"language support
Plug 'tpope/vim-haml', { 'for': ['haml'] }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'othree/html5.vim'
Plug 'stephpy/vim-yaml'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'dag/vim-fish'
Plug 'vim-crystal/vim-crystal'
Plug 'hsanson/vim-android'
Plug 'udalov/kotlin-vim'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'pantharshit00/vim-prisma'

Plug 'w0rp/ale'

" file explorer
Plug 'scrooloose/nerdtree'|
      \ Plug 'Xuyuanp/nerdtree-git-plugin'

" status line and tab line
Plug 'itchyny/lightline.vim'
Plug 'KeitaNakamura/lightline-railscasts.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'maximbaz/lightline-ale'
" Plug 'josa42/vim-lightline-coc'

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
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-treesitter/nvim-treesitter'
"
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp'
call plug#end()
