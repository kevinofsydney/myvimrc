set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" for a colorful visual status line at the bottom of the vim window
Plugin 'itchyny/lightline.vim'

" to get a cool file explorer on the left side of the screen
Plugin 'preservim/nerdtree'

" to use a cool color scheme
Plugin 'morhetz/gruvbox' 

" for code completion
Plugin 'ycm-core/YouCompleteMe'

" for bracket and speech mark auto-pairing
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set the gruvbox background to dark mode
set bg=dark
set number
set laststatus=2
set noshowmode

" maps Ctrl+N to toggle the tree file structure
map <C-n> :NERDTreeToggle<CR>

" automatically open a tree file structure on the left of the view
" autocmd vimenter * NERDTree

" automatically use the gruvbox color theme
autocmd vimenter * colorscheme gruvbox

" command for file window splits
set splitright
set splitbelow

" close scratch split window after using the autocomplete
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
