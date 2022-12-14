
" ============================================= "
call plug#begin('~/.local/share/nvim/plugged')
" Plugin List Start =========================== "

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine

" Functionalities
Plug 'airblade/vim-gitgutter'                   " Show git difference in the gutter
Plug 'alvan/vim-closetag'                       " Auto close HTML tags
Plug 'andweeb/presence.nvim'                    " Discord Rich Presence plugin for Neovim
Plug 'dyng/ctrlsf.vim'                          " Word search inside directory
Plug 'junegunn/fzf'                             " FZF Search
Plug 'junegunn/fzf.vim'                         " FZF.vim Search
Plug 'ngmy/vim-rubocop'                         " The Vim RuboCop plugin runs RuboCop and displays the results in Vim.
Plug 'rizzatti/dash.vim'                        " API Lookup
Plug 'scrooloose/nerdtree'                      " Tree file explorer
Plug 'terryma/vim-multiple-cursors'             " Multiple Cursors
Plug 'thaerkh/vim-workspace'                    " Persistent Vim Session
Plug 'tomtom/tcomment_vim'                      " Comment out function
Plug 'tpope/vim-fugitive'                       " View any blob, tree, commit, or tag in the repository
Plug 'Valloric/MatchTagAlways'                  " HTML Tag Matcher
Plug 'yggdroot/indentline'                      " Indent lines

" Syntax Highlight
Plug 'sheerun/vim-polyglot'                     " Language Pack

" Party tricks Plugin
Plug 'mhinz/vim-startify'                       " Welcome message

" Design Plugin
Plug 'joshdick/onedark.vim'                     " One Dark Theme
Plug 'ryanoasis/vim-devicons'                   " Devicons (Always load this last)
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files
Plug 'vim-airline/vim-airline'                  " Bottom toolbar
Plug 'vim-airline/vim-airline-themes'           " Themes for the bottom toolbar

" Plugin List End ============================= "
call plug#end()
" ============================================= "

" ========================================================================= [COC Extensions] ===== "
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-pairs',
  \ 'coc-prettier',
  \ 'coc-snippets',
  \ 'coc-tslint',
  \ 'coc-tsserver'
  \ ]

