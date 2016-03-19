" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
" My Bundles here:

Plugin 'Align'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hallison/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'othree/html5.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" Close backup
set nobackup
set nowritebackup

" Close bell
set vb t_vb=

set mouse=a

" set backspace to work as intended
set backspace=indent,eol,start

" Style
colorscheme mango
" Line number stuff
set number
set relativenumber


syntax on
set incsearch
set wildmenu
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.psd,*.o,*.obj,*.min.js
set wildignore+=bower_components/**,node_modules/**,build/**

set autoindent

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Tab
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Cursor Stuff
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Strip trailing whitespace
fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

" Navigator split window
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h


" Save
nmap <F2> :w<cr>
" Save all
nmap <F3> :wa<cr>
" Close
nmap <F4> :q<cr>
" quicklist prev
nmap <F6> :cp<cr>
" quicklist next
nmap <F7> :cn<cr>
" Format all
nmap <F5> gg=G<C-o>

" opening dot files
nnoremap <leader>av :tabnew $MY_VIMRC<CR>
nnoremap <leader>at :tabnew $MY_MUXCONF<CR>

" maps for tabs
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>


let g:jsx_ext_required = 0 " Allow JSX in normal JS files

nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['node_modules$[[dir]]', 'build$[[dir]]', 'dest$[[dir]]',  '\~$']

" cntrlp
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }


set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1
" JavaScript

" vim-javascript
let b:javascript_fold = 0

let g:used_javascript_libs = 'react'

" syntastic
let g:syntastic_check_on_open = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }
let g:syntastic_javascript_checkers = ['eslint']

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

nmap <A-up> :lprev<cr>
nmap <A-down> :lnext<cr>
nmap <A-right> :ll<cr>

" Goyo
function! s:goyo_before()
    set nonumber
endfunction

function! s:goyo_after()
    set number
endfunction

let g:goyo_callbacks = [function('s:goyo_before'), function('s:goyo_after')]
nmap <leader>g :Goyo<cr>
