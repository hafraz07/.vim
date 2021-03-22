" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" List ends here. Plugins become visible to Vim after this call.
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'sickill/vim-pasta'
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'

call plug#end()

set nocp
syntax on
colorscheme gruvbox
set bg=dark
set number
set clipboard=unnamed                              " Share clipboard with OS
set mouse=a                                        " Automatically enable mouse usage
set mousehide                                      " Hide the mouse cursor while typing
set autoindent
set ruler                                          " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\%P%)
set showcmd
set hls is                                         " highlight all pattern matches WHILE typing the pattern
nnoremap <silent> <space> :noh<return>h            " Removes highlight in search by pressing Spacebar one more time
set splitright                                     " Puts new vsplit windows to the right of the current
set splitbelow                                     " Puts new split windows to the bottom of the current
set nowrap                                         " Do not wrap long lines
set foldenable                                     " Auto fold code
set path+=**                                       " Recursive search on subdirectories using find, tabfind etc
set relativenumber                                 " Show relative line numbers for ease of composing commands
set vb t_vb=                                       " Disable screen flashing on error.
set scrolloff=8                                    " Scroll down if cursor is < 8 lines from the bottom of the screen

let mapleader = ","
nnoremap <leader>h :b#<CR>                         " Switch to alternate buffer key map

" NERDTree Mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


set ignorecase                                     
set smartcase                                      " Show both case letters when searching with lowercase but only uppercase if searching with uppercase
set laststatus=2                                   " Enable status bar
set noshowmode                                     " No need for it once you have status bar
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

highlight link Sneak None                          " Disable highlight in vim-sneak
let g:sneak#use_ic_scs=1                           " Case-insensitive search
" let g:loaded_matchparen=1                        " disable parentheses highlight

" 2-character Sneak (default)
    " nmap z <Plug>Sneak_s
    " nmap Z <Plug>Sneak_S
    " " visual-mode
    " xmap z <Plug>Sneak_s
    " xmap Z <Plug>Sneak_S
    " operator-pending-mode
    " omap ? <Plug>Sneak_s
    " omap ? <Plug>Sneak_S


set wildmenu                                       " Show list instead of just completing
set wildmode=list:longest,full                     " Command <Tab> completion, list matches, then longest common part, then all.

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete               " Language aware syntax completion <C-x><C-O>
" show existing tab with 4 spaces width
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab
" Make it obvious where 80 characters is
" set textwidth=80
set colorcolumn=80
" get the defaults that most users want.
" source $vimruntime/defaults.vim

" put these in an autocmd group, so that we can delete them easily.
augroup vimrcex
  au!

  " for all text files set 'textwidth' to 78 characters.
  autocmd filetype text setlocal textwidth=78
augroup end
