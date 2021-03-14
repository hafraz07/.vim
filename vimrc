set nocp
syntax on
colorscheme nord
set number
set clipboard=unnamed                              " Share clipboard with OS
set mouse=a                                        " Automatically enable mouse usage
set mousehide                                      " Hide the mouse cursor while typing
set showmode
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

set ignorecase
set smartcase
set laststatus=2                                   " Enable status bar
set noshowmode                                     " No need for it once you have status bar
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

highlight link Sneak None                          " Disable highlight in vim-sneak
let g:sneak#use_ic_scs=1                           " Case-insensitive search
" let g:loaded_matchparen=1                        " disable parentheses highlight

" 2-character Sneak (default)
    nmap z <Plug>Sneak_s
    nmap Z <Plug>Sneak_S
    " visual-mode
    xmap z <Plug>Sneak_s
    xmap Z <Plug>Sneak_S
    " operator-pending-mode
    " omap ? <Plug>Sneak_s
    " omap ? <Plug>Sneak_S


set wildmenu                                       " Show list instead of just completing
set wildmode=list:longest,full                     " Command <Tab> completion, list matches, then longest common part, then all.

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete               " Language aware syntax completion <C-x><C-O>
" show existing tab with 4 spaces width
set tabstop=4
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
