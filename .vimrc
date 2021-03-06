" Kamila's new neat .vimrc (based on MisoF's .vimrc)
"
" === should-be-defaults to preserve one's sanity ============================================== {{{

set nocompatible  " we want vim's features (as opposed to just vi)
set bs=2          " make backspace work as expected
set autoindent
set smartindent
set history=100
set ruler         " cursor position (line, col) in the bottom line
syntax on

" ============================================================================================== }}}
" === enable [Pathogen](https://github.com/tpope/vim-pathogen) ================================= {{{

execute pathogen#infect()

" ============================================================================================== }}}
" === personal preferences: default indentation, colors, autowrite, status line etc ============ {{{

set expandtab shiftwidth=4 tabstop=4 softtabstop=4  " 4 spaces rock!
set shiftround " when shifting, shift to the nearest tabstop (round the column)

set textwidth=100

set background=dark
colorscheme solarized

set cursorline

set autoread   " automatically re-read files changed outside vim
set autowrite  " autosave files before a make or execute

set wildmenu   " wildmenu fun!
set wildchar=<Tab>
set wildmode=full

set clipboard=unnamed,unnamedplus  " use system clipboard for y and d

set showcmd    " show additional stuff when typing a command

set timeout         " for mapped commands
set timeoutlen=200  " ms

set incsearch
set ignorecase smartcase  " case-insensitive when the query is all lowercase, else case sensitive
set nohlsearch

" TODO statusline
" TODO tabline (for wildmenu)
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '\'
let g:airline_powerline_fonts = 1
set laststatus=2

" some tweaks taken from vimbits.com:
vnoremap < <gv  " reselect visual block after indent
vnoremap > >gv  " ... and outdent
cmap w!! %!sudo tee > /dev/null %  " useful if one keeps forgetting sudo :D

" I use the [supertab](https://github.com/ervandew/supertab) plug-in for tab completion
let g:SuperTabDefaultCompletionType = "context"

" show a rule for textwidth (specifically: display (tw+1)-th column in a different color)
set colorcolumn=+1

set fdm=marker

" ============================================================================================== }}}
" === custom mappings ========================================================================== {{{

map <F2> :NERDTreeToggle<CR>

" ============================================================================================== }}}
" === make vim more useful ===================================================================== {{{

set hidden          " ... e.g. for editing multiple files
filetype plugin on  " ... or for editing multiple languages :D

" if there are machine-specific things, I can just put them to ~/.vimrc.local
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif


" ============================================================================================== }}}
