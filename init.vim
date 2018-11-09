" Dan Thompson
" init.vim



" Plugins
"
" Using https://github.com/junegunn/vim-plug. To setup:
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Plugins will be downloaded into this directory
call plug#begin('~/.config/nvim/plugged')
" List of plugins
Plug 'https://github.com/vimoutliner/vimoutliner'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/fholgado/minibufexpl.vim'
Plug 'https://github.com/jremmen/vim-ripgrep'
Plug 'https://github.com/ludovicchabant/vim-gutentags'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mhartington/oceanic-next'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/godlygeek/tabular'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
" List ends here. Plugisn become visible to Vim after this call.
call plug#end()

" Settings
set autoindent            " Copy indent from current line when starting new line
set clipboard=unnamedplus " Allow all vim instances to share a buffer
set expandtab             " Use spaces instead of tabs"
set list                  " Show tabs and trailing whitespace
set listchars=tab:>·,trail:·,nbsp:⎵
set matchtime=1           " How many 10ths of a second to show the match for
set mouse=                " Turn off the mouse!
set noerrorbells          " Don't make noise
set nolazyredraw          " No lazy redraw!
set number                " Show line number
set ruler                 " Show line & column number
set shiftwidth=2          " Set tab width
set showcmd               " Show (partial) command in status line
set showmatch             " briefly jump to matching bracket upon bracket insert
set smartindent           " Works for c! Smart indent on new line
set smarttab              " Set Smart Tab
set softtabstop=2         " Set Tab width
set wildmenu              " Better tab complete
set wildmode=list:longest:full

" Exports

" Set highlighting for line width
set cc=79
highlight ColorColumn ctermbg=darkgrey

" Remapping
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <c-i> :TagbarToggle<CR>
nnoremap <c-p> :SK <CR>

nmap - :NERDTreeToggle % <CR>

" Theme
set termguicolors       " Support true colors
set background=dark
syntax enable
" let g:hybrid_custom_term_colors = 1
colorscheme hybrid


