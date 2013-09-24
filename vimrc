" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

silent! call pathogen#infect()
silent! call pathogen#helptags()

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink

set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window. 
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

if has("gui_running")
  set background=dark
  colorscheme Monokai 
else
  set background=dark
  set t_Co=256
  colorscheme Monokai
end

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
set ignorecase
set smartcase

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype on
filetype plugin on
filetype indent on

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" ================ Scrolling ========================

set scrolloff=3         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=5
set sidescroll=1


" ===== Misc ======

set modelines=0
set encoding=utf-8
set ttyfast
set ruler
set laststatus=2
set gdefault
set noshowmatch
highlight clear SignColumn

" Stupid shift key fixes
if has("user_commands")
    command! -bang -nargs=* -complete=file E e<bang> <args>
    command! -bang -nargs=* -complete=file W w<bang> <args>
    command! -bang -nargs=* -complete=file Wq wq<bang> <args>
    command! -bang -nargs=* -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
    cab X x
endif

" ============== GUI Scrollbars ========================
set guioptions+=LlRrb
set guioptions-=LlRrb

" ============== GUI Font ========================
if has("gui_running")
    if has("win32")
        set guifont=Consolas:h11
    endif
    if has("unix")
      set guifont=DejaVu\ Sans\ Mono\ 11
    endif
endif

" ============== NERDTree ========================

if has("gui_running")
  let g:NERDTreeWinSize = 40
  let NERDTreeShowBookmarks = 1
  " autocmd VimEnter * NERDTree
endif

" ============== Ruby ============================
autocmd FileType ruby setlocal et ts=2 sw=2 tw=0

" ============= Grep plugin ======================
nnoremap <F3> :Ag<CR>

" ============= make ======================
nnoremap <F9> :make<CR>

nnoremap <F2> :nohl<CR>


