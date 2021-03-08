let mapleader = ","

" file explorer
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
nmap <leader>bn :NERDTreeFocus<CR>
let NERDTreeQuitOnOpen=1

" noob shotcuts
nnoremap <C-z> u
nnoremap <C-y> <C-r>
tnoremap <Esc> <C-\><C-n>

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
nnoremap <C-h> <C-w>>
nnoremap <C-j> <C-w>-
nnoremap <C-k> <C-w>+
nnoremap <C-l> <C-w><

" tabs
nnoremap <leader>w :tabnext<CR>
nnoremap <leader>q :tabprevious<CR>

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

map <C-p> :GFiles<cr>
map <leader>p :GFiles<cr>

" clear buffers
map <leader>r :bufdo bd<cr>
map <leader>rr :%bd\|e#<cr>

" terminal
map <leader>c :FloatermToggle<cr>
