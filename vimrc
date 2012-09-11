autocmd! bufwritepost .vimrc source ~/.vimrc
set showtabline=2
set guitablabel=%t
set ignorecase smartcase
set wrap
set whichwrap+=l,h
set number
syntax enable
set winaltkeys=no
set autoindent  
set shiftwidth=4
set softtabstop=4
"set backspace=4
set ruler  
set showcmd
set incsearch
set ignorecase 
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入  
set showmatch 
set matchtime=5
filetype plugin indent on
map <F5> <Esc>gg=G<C-o> 
map <F6> <Esc>:tabedit<Enter>
map \p <Esc>"*p<Enter>k$a
map \y <Esc>"*y<Enter>
vmap \y "+y<Enter>
vmap <C-c> "+y<Enter>
map <F1> <Esc>:w<Enter>
map \w <Esc>:w<Enter>
map <C-s> <Esc>:w<Enter>
imap <C-s> <Esc>:w<Enter>a
map <F2> <Esc>:wall<Enter>
imap <F1> <Esc>:w<Enter>a
imap <C-x><C-s> <Esc>:w<Enter>a
imap <F2> <Esc>:wall<Enter>a
imap <C-b> <Esc>i
imap <C-c> <Esc>
imap <C-l> <Esc>zza
imap <C-z> <Esc>ui
imap <C-r> <Esc><C-r>i
map <C-z> <Esc>u
imap <C-n> <Esc>ja
imap <C-f> <Esc>la
imap <C-p> <Esc>ka
imap <C-e> <Esc>$a
imap <C-a> <Esc>0i
imap <C-d> <Esc>lxi
imap <C-k> <Esc>ld$a
imap <C-z> <Esc>ua
imap <C-l> <Esc>zza
imap <A-d> <Esc>ldwi
imap <A-Backspace> <Esc>ldbi
imap <A-b> <Esc>bi
imap <A-f> <Esc>lwi
"nerdtree
imap <F3> <Esc>:NERDTreeToggle<Enter>
map <F3> <Esc>:NERDTreeToggle<Enter>
""""
""tagbar
nmap <F8> :TagbarToggle<CR>
imap <F8> :TagbarToggle<CR>
""""
set fileencodings=utf-8,cp932
map <F1> <Esc>:w<Enter>
map <A-x> <Esc>:set filetype=
map <S-F5> :source ~/.vimrc<Enter>
"翻标签
map <C-Tab> <Esc>gt
map <C-S-Tab> <Esc>gT
imap <C-Tab> <Esc>gt
imap <C-S-Tab> <Esc>gT
vmap <C-Tab> <Esc>gt
vmap <C-S-Tab> <Esc>gT
map H <Esc>gT
map L <Esc>gt
"快捷插入各种编程括号
imap <A-1> -><Esc>a
imap <A-2> =><Space><Esc>i
imap <A-3> <%%><Esc>hi
imap <A-4> <><Esc>i
imap <A-5> =><Space><Esc>i
imap <A-s> #{}<Esc>i
imap <A-/> <Esc>0i#
map <A-/> <Esc>0i#
imap <A-6> <%%><Esc>hi
"""

autocmd BufNewFile,BufRead *.scss set filetype=sass

if has("gui_macvim")
    set guifont=Monaco:h18
    set macmeta
    "let macvim_skip_cmd_opt_movement=1
    "let macvim_hig_shift_movement=1
    vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
    map \p :call setreg("\"",system("pbpaste"))<CR>p
else
    set guifont=Monospace\ 14
endif

"""""""""""""""""bundle start"""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" original repos on github
Bundle 'tpope/vim-rails.git'
Bundle 'jiangmiao/auto-pairs.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'skammer/vim-css-color'
Bundle 'scrooloose/nerdcommenter'
Bundle 'flazz/vim-colorschemes'
Bundle 'mileszs/ack.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
" vim-scripts repos
Bundle 'FuzzyFinder'
Bundle 'blackboard.vim'
Bundle 'L9'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" vim-scripts repos
"Bundle 'The-Nerd-tree'
"Bundle 'rails.vim'
"Bundle 'snipMate'

""""""""""""""""""bundle end""""""""""""""""""""
let g:ackprg="ack-grep -H --nocolor --nogroup --column"  "ack用的 

" F4和shift+F4调用FuzzyFinder命令行菜单"
"
function! GetAllCommands()
    redir => commands
    silent command
    redir END
    return map((split(commands, "\n")[3:]),
		\      '":" . matchstr(v:val, ''^....\zs\S*'')')
endfunction

" 自定义命令行
let g:fuf_com_list=[':FufBuffer',':FufFile',':FufCoverageFile',':FufDir',
	    \':FufMruFile',':FufMruCmd',':FufBookmarkFile',
	    \':FufBookmarkDir',':FufTag',':FufBufferTag',
	    \':FufTaggedFile',':FufJumpList',':FufChangeList',
	    \':FufQuickfix',':FufLine',':FufHelp',
	    \":FufFile \<C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]\<CR>",
	    \":FufDir \<C-r>=expand('%:p:~')[:-1-len(expand('%:p:~:t'))]\<CR>",
	    \]       
nnoremap <silent> <C-F4> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>
map <F4> <Esc>:FufFile<CR>
map <S-F4> <Esc>:FufBuffer<CR>

"cp ~/.vimrc ~/StudyNotes/vimrc.txt

colorscheme blackboard
filetype plugin on

