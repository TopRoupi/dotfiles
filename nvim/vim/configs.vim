let os = substitute(system('uname'), "\n", "", "")

"git
let g:blamer_enabled = 1

" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1
let g:minimap_highlight_search = 1

set termguicolors " true colors
set exrc " loads project spedific .nvimrc

set conceallevel=0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
set nofoldenable

" Misc
set secure
set lazyredraw
set splitbelow
set splitright
set diffopt+=vertical
set shell=/bin/fish
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
filetype plugin indent on
set laststatus=2

" Display options
syntax on
set pastetoggle=<F12>
set nocursorline
set number
set list!                       " Display unprintable characters
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«
autocmd filetype html,xml,go set listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+
" colorscheme railscasts
" colorscheme railscasts
" colorscheme badwolf
" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme molokai
" let g:molokai_original = 1
" colorscheme base16-default-dark
" colorscheme new-railscasts
" colorscheme monokai
" colorscheme vim-monokai-tasty
" colorscheme sublimemonokai
" set background=dark
set t_ut= " fixes transparent BG on tmux

" Always edit file, even when swap file is found
set shortmess+=A
set hidden                         " Don't abandon buffers moved to the background
set wildmenu                       " Enhanced completion hints in command line
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set visualbell
set mouse=a

" copy text from vim to the system clipboard
set clipboard+=unnamedplus

" Relative line numbers
set relativenumber
autocmd InsertLeave * :call NumberToggle()
autocmd InsertEnter * :call NumberToggle()

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunction

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

" autocmd VimEnter * NERDTree | wincmd p

set scrolloff=8
