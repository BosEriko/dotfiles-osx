
" ================================================================================ [Hotkeys] ===== "

" Change mapleader
let mapleader=" "

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Remap colon to semicolon to avoid using shift too much
map ; :
nnoremap ;; ;

" Control Shortcuts
nnoremap <silent> <C-\> :NERDTreeToggle<CR>
nnoremap <silent> <C-t> :NERDTreeFind<CR>
nnoremap <silent> <C-h> :bp!<CR>
nnoremap <silent> <C-l> :bn!<CR>
nnoremap <silent> <C-x> :bd<CR>
nnoremap <silent> <C-q> :q<CR>
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-c> :TComment<CR>
nnoremap <silent> <C-k> :!less ~/dotfiles/vim/hotkeys.vim<CR>
nnoremap <silent> <C-b> :let @+ = expand("%")<CR>
nnoremap <C-f> :CtrlSF<space>
nnoremap <C-g> :%s/old/new/g
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Leader Shortcuts
nnoremap <silent> <leader>l :set list!<CR>
nnoremap <silent> <leader>r :RuboCop<CR>
nnoremap <silent> <leader>a :ALEToggle<CR>
nnoremap <silent> <leader>w :set wrap!<CR>
nnoremap <silent> <leader>g :Gblame<CR>
nnoremap <silent> <leader>n :noh<CR>
set pastetoggle=<leader>p

