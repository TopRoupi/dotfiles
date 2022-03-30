let mapleader = ","

" file explorer
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
nmap <leader>bn :NERDTreeFocus<CR>
let NERDTreeQuitOnOpen=1

" noob shotcuts
nnoremap <C-z> u
nnoremap <C-y> <C-r>
tnoremap <Esc> <C-\><C-n>
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" buffer navigation
nnoremap <leader>z :bprev<CR>
nnoremap <leader>x :bnext<CR>
nnoremap <leader>zx :buffers<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <C-Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" tests execution
nnoremap <leader>t :TestNearest<CR>
nnoremap <leader>T :TestFile<CR>
nnoremap <leader>ttt :TestSuite<CR>

" window nav
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

" resize window
nnoremap <C-l> <C-w>>
nnoremap <C-j> <C-w>-
nnoremap <C-k> <C-w>+
nnoremap <C-h> <C-w><

" tabs
nnoremap <leader>w :tabnext<CR>
nnoremap <leader>q :tabprevious<CR>

" move lines in sublime like, with shift plus ctrl
" nnoremap <C-j> :m .+1<CR>==
" nnoremap <C-k> :m .-2<CR>==
" inoremap <C-j> <Esc>:m .+1<CR>==gi
" inoremap <C-k> <Esc>:m .-2<CR>==gi
" vnoremap <C-k> :m '<-2<CR>gv=gv
" vnoremap <C-j> :m '>+1<CR>gv=gv

nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

map <C-p> :GFiles<cr>
map <leader>p :GFiles<cr>

" clear buffers
map <leader>r :bufdo bd<cr>
map <leader>rr :%bd\|e#<cr>

" terminal
map <leader>cn :FloatermNew --wintype=split<cr>
map <leader>c :FloatermToggle<cr>
map <leader>ck :FloatermKill!<cr>
map <leader>cs :FloatermNext<cr>
map <leader>cx :FloatermPrev<cr>
map <leader>ct :FloatermNew --height=0.6 --width=0.6 --wintype=float --position=topleft --autoclose=0 rails test<cr>
" map <leader>c :Term<cr>
