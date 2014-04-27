set nocompatible
set t_Co=256 "yes, hardcode 256 colors to vim

" Misc options
set backspace=indent,eol,start "backspace everywhere
set number
set mouse= " disable mouse
set ruler " show the cursor position all the time
set history=1000
set undolevels=1000
set showcmd
set showmatch

" Searching
set ignorecase smartcase
set incsearch hlsearch
noremap <F4> :set invhlsearch <CR>

" Formatting
set sw=4
set ts=4
set sts=4
set expandtab smarttab
set autoindent smartindent

" Buffer switching is easier
set confirm
set hidden

" Command completion
set wildmode=longest,full
set wildmenu
set wildignore=*.o,*.obj,*~

" Show trailing whitespace.
set nolist
set listchars=trail:.

" Key mapping
noremap <F9> :set invspell <CR>
map Y y$
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" colorscheme
let xterm16_colormap='soft'
let xterm16_brightness='low'
colorscheme xterm16
syntax on

" This is for managing plugins using vundle.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
" end of vundle stuff, run :BundleInstall to update

" statusline
let g:airline_theme='simple'
set ttimeoutlen=50
set laststatus=2
set noshowmode
let g:airline#extensions#whitespace#show_message = 0
let g:airline_symbols={}
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = '|'
" use below if line/col is getting painful
"let g:airline_section_b='[%P%:%4l:%c]'
"let g:airline_section_z='%F'
"set statusline=%F%m%r%h%w\ [%l,%v\ %p%%]\ [LEN=%L]\ [%Y]\ [%{&ff}]

" miniBuf options
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

" Taglist options
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-g> :TlistToggle<CR>

filetype plugin indent on
