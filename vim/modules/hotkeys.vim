
" ================================================================================ [Hotkeys] ===== "

" Change mapleader
let mapleader="\<space>"

" Control Shortcuts
nnoremap <silent> <C-\> :NERDTreeToggle<CR>
nnoremap <silent> <C-t> :NERDTreeFind<CR>
nnoremap <silent> <C-h> :bp!<CR>
nnoremap <silent> <C-l> :bn!<CR>
nnoremap <silent> <C-x> :bd<CR>
nnoremap <silent> <C-q> :q<CR>
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-c> :TComment<CR>
nnoremap <silent> <C-k> :!open -a firefox -g "https://www.notion.so/boseriko-professional/92045538d4be4360a6486d9d8d5178aa\?v\=9722425e7b2c4d8cbb05b0701e5f9da1" --args --kiosk<CR>
nnoremap <silent> <C-b> :let @+ = expand("%")<CR>
nnoremap <C-f> :CtrlSF<space>
nnoremap <C-g> :%s/old/new/g
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Leader Shortcuts
nnoremap <silent> <leader>d :Dash!<CR>
nnoremap <silent> <leader>e :PlugInstall!<CR>
nnoremap <silent> <leader>g :Git blame<CR>
nnoremap <silent> <leader>l :set list!<CR>
nnoremap <silent> <leader>n :noh<CR>
nnoremap <silent> <leader>o :'<,'>sort<CR>
nnoremap <silent> <leader>r :g/^/m0<CR>
nnoremap <silent> <leader>s :Startify<CR>
nnoremap <silent> <leader>t :ToggleWorkspace<CR>
nnoremap <silent> <leader>w :set wrap!<CR>
set pastetoggle=<leader>p

