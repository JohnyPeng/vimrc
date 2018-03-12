" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
	syntax on
endif
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a " Enable mouse usage (all modes)
set number
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F9>
"set textwidth=79
"split navigation
"Normal no reverse map
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap U <esc>gUll
nnoremap <CR> G
nnoremap H 0
nnoremap L $
nnoremap <space> :
"Insert no reverse map
"imap <Tab> <esc>
"inoremap <C-H> <Left>
"vmap <Tab> <esc>

"Insert abbreviations
"Tab
map <Leader>tn :tabnew<CR>
map <Leader>tc :tabclose<CR>
map <C-Right> :tabnext<CR>
map <C-Left> :tabprevious<CR>
syntax on

"Vundle plugin
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
call vundle#end()
filetype plugin indent on
"Powerline
let g:Powerline_symbols = 'fancy'

"FZF START
nnoremap <Leader>t :FZF<CR>
inoremap <Leader>t <esc>:FZF<CR>
"FZF END
"NERDTree START
"F2 ON/OFF tree"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"Show bookmarks
let NERDTreeShowBookmarks=1
"Set ignore
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"Set nerdtree window size
let NERDTreeWinSize=40
"Find current file path
map <F3> :NERDTreeFind<CR>
"Set window right
let NERDTreeWinPos=1
"auto open NERDTree
"autocmd vimenter * NERDTree
"NERDTree END

"Ack START
let g:ackprg = 'ag --nogroup --nocolor --column'
"Ack END


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

