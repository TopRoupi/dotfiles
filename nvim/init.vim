let os = substitute(system('uname'), "\n", "", "")
"
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'|
      \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
Plug 'chusiang/vim-sdcv' " How to install dict see https://askubuntu.com/questions/191125/is-there-an-offline-command-line-dictionary
Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'
Plug 'benekastah/neomake'
Plug 'Shougo/neco-syntax'
Plug 'ujihisa/neco-look', { 'for': ['text', 'note', 'gitcommit', 'markdown'] }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-haml', { 'for': ['haml'] }
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'tomtom/tcomment_vim'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby'] }
Plug 'kana/vim-textobj-user', { 'for': ['ruby'] }
Plug 'thinca/vim-localrc'
Plug 'jgdavey/vim-blockle'
Plug 'othree/eregex.vim'
Plug 'othree/html5.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'Shougo/neco-syntax'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee', 'haml', 'eruby'] }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'honza/vim-snippets'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'ap/vim-css-color'
Plug 'editorconfig/editorconfig-vim'
Plug 'rhysd/vim-grammarous'
Plug 'cespare/vim-toml'
Plug 'bfredl/nvim-miniyank'
Plug 'int3/vim-extradite'
Plug 'dzeban/vim-log-syntax'
Plug 'stephpy/vim-yaml'

Plug 'airblade/vim-gitgutter'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'dag/vim-fish'
Plug 'jpo/vim-railscasts-theme'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'fishbullet/deoplete-ruby'

call plug#end()

let g:LanguageClient_serverCommands = {
      \ 'ruby': ['~/.asdf/shims/solargraph', 'stdio'],
      \ }


nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

set termguicolors " true colors
set exrc " loads project spedific .nvimrc

call deoplete#custom#source('_', 'max_menu_width', 10)

" Misc
set secure
set lazyredraw
set splitbelow
set splitright
set diffopt+=vertical
set shell=/bin/zsh
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
set clipboard=unnamed
filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
set laststatus=2          " When you go into insert mode,
                          " the status line color changes.
                          " When you leave insert mode,
                          " the status line color changes back.

" Display options
syntax on
set pastetoggle=<F12>
set nocursorline
set number
set list!                       " Display unprintable characters
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«
autocmd filetype html,xml,go set listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+
colorscheme railscasts
let g:gruvbox_contrast_dark = "medium" " soft, medium, hard
let g:gruvbox_contrast_light = "medium"
set background=dark
set t_ut= " fixes transparent BG on tmux

" Always edit file, even when swap file is found
set shortmess+=A
set hidden                         " Don't abandon buffers moved to the background
set wildmenu                       " Enhanced completion hints in command line
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set visualbell
set mouse=a

" Relative line numbers
set norelativenumber
autocmd InsertLeave * :call NumberToggle()
autocmd InsertEnter * :call NumberToggle()

" Indentation and tabbing
set autoindent smartindent
set smarttab                    " Make <tab> and <backspace> smarter
set tabstop=2
set expandtab
set shiftround
set shiftwidth=2
set incsearch
set viminfo=%100,'100,/100,h,\"500,:100,n~/.config/nvim/viminfo

" Undo
set undolevels=1000                     " How many undos
set undoreload=10000                    " number of lines to save for undo
if has("persistent_undo")
  set undodir=~/.config/nvim/undo       " Allow undoes to persist even after a file is closed
  set undofile
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunction

let g:deoplete#enable_at_startup = 1
" autocmd VimEnter * NERDTree | wincmd p

let mapleader = ","

nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
nmap <leader>bn :NERDTreeFocus<CR>

nnoremap <leader>bb :buffers<CR>
nnoremap <C-z> u
nnoremap <C-y> <C-r>

nnoremap <C-d> yy p

nnoremap <leader>z :bprev<CR>
nnoremap <leader>x :bnext<CR>
nnoremap <leader>zx :buffers<CR>

nnoremap <leader>t :TestNearest<CR>
nnoremap <leader>T :TestFile<CR>
nnoremap <leader>ttt :TestSuite<CR>

" window nav
nnoremap <leader>w <C-w>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
" resize window
nnoremap <C-h> <C-w>>
nnoremap <C-j> <C-w>-
nnoremap <C-k> <C-w>+
nnoremap <C-l> <C-w><

" tabs
nnoremap <leader>w :tabnext<CR>
nnoremap <leader>q :tabprevious<CR>

" copy text from vim to the system clipboard
set clipboard+=unnamedplus

" move lines in sublime like, with shift plus ctrl
" nnoremap <C-S-j> :m .+1<CR>==
" nnoremap <C-S-k> :m .-2<CR>==
" inoremap <C-S-j> <Esc>:m .+1<CR>==gi
" inoremap <C-S-k> <Esc>:m .-2<CR>==gi
" vnoremap <C-S-k> :m '<-2<CR>gv=gv
" vnoremap <C-S-j> :m '>+1<CR>gv=gv

nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](doc|tmp|node_modules)',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
