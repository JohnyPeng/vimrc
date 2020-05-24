source $VIMRUNTIME/vimrc_example.vim

set background=dark
syntax enable
colorscheme onedark

set nobackup
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

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=b 
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
" Lower case to Upper case
nnoremap U <esc>gUll
nnoremap H 0
nnoremap L $
nnoremap <space>y "+
nnoremap <leader>wq :wq<CR>
nnoremap <C-Z> :wa<CR><C-Z>
"nnoremap <C-T> :LeaderfFile<CR>
nnoremap <C-T> :FZF<CR>
iabbrev xend <!--TINNO END-->
iabbrev xtinno <!--TINNO BEGIN--><cr><!--JIRA:--><cr><!--AUTHOR:jonny.peng@tinno.com--><ESC>kba
iabbrev jtinno //TINNO BEGIN<cr>JIRA:<cr>AUTHOR:jonny.peng@tinno.com<ESC>kA
iabbrev stinno #TINNO BEGIN<cr>#JIRA:<cr>#AUTHOR:jonny.peng@tinno.com<ESC>kA
iabbrev syso System.out.println("");<ESC>2hi
iabbrev logd Log.d(TAG, "");<Left><Left><Left>
iabbrev logi Log.i(TAG, "");<ESC>2hi
iabbrev consti public static final int
iabbrev constS public static final String
iabbrev docj /**<cr><cr>/<ESC>kA

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

"Insert abbreviations
inoremap <C-J> <esc>
"colo evening
set guifont=Consolas:h10:cANSI
cmap <C-V>		<C-R>+
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']

call plug#begin('C:\Users\jonny.peng\.vim\vimfiles\autoload')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

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

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

