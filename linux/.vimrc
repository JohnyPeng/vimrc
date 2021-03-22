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
set background=dark
syntax enable

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
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a " Enable mouse usage (all modes)
set number
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F9>
set laststatus=2
set hlsearch
set mouse=n
set tabpagemax=99
"set clipboard=unnamed
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
nnoremap <C-N> *
" Lower case to Upper case
nnoremap U <esc>gUll
nnoremap H 0
nnoremap L $
nnoremap <space>y "+
nnoremap <leader>wq :wq<CR>
nnoremap <C-Z> :wa<CR><C-Z>
"nnoremap <C-T> :LeaderfFile<CR>
nnoremap <C-T> :FZF<CR>
nnoremap <C-B> :Buffers<CR>
"nnoremap yy yy"+yy
"nnoremap yw yw"+yw
"nnoremap dd dd"+dd
"nnoremap dw dd"+dw
"nnoremap gt :w<CR>gt
"nnoremap gT :w<CR>gT
"Insert no reverse map
"imap <Tab> <esc>
"inoremap <C-H> <Left>
"vmap <Tab> <esc>
iabbrev xend <!--TINNO END--><ESC>
iabbrev xtinno <!--TINNO BEGIN--><cr><!--JIRA:--><cr><!--AUTHOR:jonny.peng@tinno.com--><ESC>kba
iabbrev jtinno //TINNO BEGIN<cr>JIRA:<cr>AUTHOR:jonny.peng@tinno.com<cr>DESC:<ESC>2kA
iabbrev jctinno /**<cr>JIRA:<cr>FUNC:<cr>AUTHOR:jonny.peng@tinno.com<cr>/<ESC>3kA
iabbrev stinno #TINNO BEGIN<cr>#JIRA:<cr>#AUTHOR:jonny.peng@tinno.com<cr>#DESC:<ESC>2kA
iabbrev syso System.out.println("");<ESC>2hi
iabbrev logd Log.d(TAG, "");<ESC>3h
iabbrev logi Log.i(TAG, "");<ESC>3h
iabbrev logj Log.d("jonny", "");<ESC>3h
iabbrev slogd Log.d(TAG, "", new Throwable());<ESC>
iabbrev slogj Slog.d("jonny", "");<ESC>3h
iabbrev consti public static final int
iabbrev constf public static final float
iabbrev constd public static final double
iabbrev constS public static final String
iabbrev docj /**<cr><cr>/<ESC>kA
iabbrev fori for(int i = 0; i < ; i++)<ESC>5h

"Don't use <space> as leader, otherwise cause ui lags in response
let mapleader=";"

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>ts :tabs<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap "" viw<esc>a"<esc>hbi"<esc>lel"
nnoremap `` viw<esc>a`<esc>hbi`<esc>lel"

nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>dd "+dd
nnoremap <leader>dw "+dw
nnoremap <leader>yw "+yw
"nnoremap <leader>v <c-v>
nnoremap <leader>a :Ag<space>
nnoremap <leader>s :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>

vnoremap y "+y
"Insert abbreviations
inoremap <C-J> <esc>

syntax on
"colorscheme onedark

"Vundle plugin
filetype off
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'Yggdroot/LeaderF'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mileszs/ack.vim'
Plug 'aklt/plantuml-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'mattn/emmet-vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
call plug#end()
filetype plugin indent on
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'


" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')

"FZF START
"FZF END
"NERDTree START
"F2 ON/OFF tree"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"Show bookmarks
let NERDTreeShowBookmarks=0
"Set ignore
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"Set nerdtree window size
let NERDTreeWinSize=40
"Find current file path
map <F3> :NERDTreeFind<CR>
"Set window right
let NERDTreeWinPos=0
"auto open NERDTree
"autocmd vimenter * NERDTree
"NERDTree END

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_conceal=0
let g:vim_markdown_conceal_code_blocks=0

"Ack START
let g:ackprg = 'ag --nogroup --nocolor --column'
"Ack END

"Get current file path to clip board
function GetCurFilePath()
    let cur_dir=getcwd()
    let cur_file_name=getreg('%')
    let dir_filename=cur_dir."/".cur_file_name
    echo dir_filename."         done"
    call setreg('+',dir_filename)
endfunction
nnoremap <silent> <F9> : call GetCurFilePath()<cr>

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

