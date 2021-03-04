" color scheme
syntax on
colorscheme nord
set number
set clipboard=unnamed                  " Share clipboard with OS
set mouse=a                            " Automatically enable mouse usage
set mousehide                          " Hide the mouse cursor while typing
set showmode
set autoindent
set ruler                              " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set hls is
set splitright                         " Puts new vsplit windows to the right of the current
set splitbelow                         " Puts new split windows to the bottom of the current
set nowrap                             " Do not wrap long lines
set foldenable                         " Auto fold code
set path+=**                           " Recursive search on subdirectories using find, tabfind etc
set relativenumber                     " Show relative line numbers for ease of composing commands
" let g:loaded_matchparen=1              " disable parentheses highlight

set wildmenu                           " Show list instead of just completing
set wildmode=list:longest,full         " Command <Tab> completion, list matches, then longest common part, then all.

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim


if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END
