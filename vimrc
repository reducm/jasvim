autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! BufReadPost Gemfile set ft=ruby
au BufRead,BufNewFile *.rabl set filetype=ruby
au BufRead,BufNewFile *.jbuilder set filetype=ruby
set showtabline=2
set laststatus=2
set guitablabel=%t
set ignorecase smartcase
set smarttab
set wrap
set whichwrap+=l,h
set number
set history=50
set autoread
syntax enable
set incsearch
set hlsearch

highlight Search guibg='yellow'
set nobackup
set copyindent
set winaltkeys=no
set autoindent  
set shiftwidth=2 tabstop=2 expandtab
set softtabstop=2
"set backspace=4
set ruler  
set showcmd
set ignorecase 
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入  
""set cursorcolumn  " 高亮光标列
set cursorline    " 高亮光标行
set cursorcolumn
set showmatch 
set showmode
set matchtime=5
filetype plugin indent on
map <F5> <Esc>gg=G<C-o> 
map <F6> <Esc>:tabedit<Enter>
map \p <Esc>"*p<Enter>k$a
map \y <Esc>"*y<Enter>
vmap \y "+y<Enter>
vmap <C-c> "+y<Enter>
map <F1> <Esc>:Gstatus<Enter>
map \w <Esc>:w<Enter>
map <C-s> <Esc>:w<Enter>
imap <C-s> <Esc>:w<Enter>a
map <F2> <Esc>:Gcommit<Enter>
imap <C-x><C-s> <Esc>:w<Enter>a
imap <C-b> <Esc>i
"imap <C-c> <Esc>
imap <C-l> <Esc>zza
imap <C-z> <Esc>ui
imap <C-r> <Esc><C-r>i
map <C-z> <Esc>u
imap <C-n> <Down>
imap <C-f> <Esc>la
imap <C-p> <Up>
imap <C-e> <Esc>$a
imap <C-a> <Esc>0i
imap <C-d> <Esc>lxi
imap <C-k> <Esc>ld$a
imap <C-z> <Esc>ua
imap <A-d> <Esc>ldwi
imap <A-Backspace> <Esc>ldbi
imap <A-f> <Esc>lwi
"nerdtree
imap <f3> <esc>:NERDTreeToggle<enter>
map <f3> <esc>:NERDTreeToggle<enter>
""""IndentGuidesToggle
imap <f7> <esc>:IndentGuidesToggle<enter>
map <f7> <esc>:IndentGuidesToggle<enter>
""tagbar
nmap <F8> :TagbarToggle<CR>
imap <F8> :TagbarToggle<CR>
""""
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
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
"""
"命令行下也绑定emacs按键
cnoremap <C-e> <END>
cnoremap <C-a> <HOME>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

"代码自动fold设定
"set foldmethod=syntax
"set foldlevelstart=1

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

"autocmd BufNewFile,BufRead *.scss set filetype=sass
"autocmd BufNewFile,BufRead *.vue set filetype=html
"au BufRead,BufNewFile *.s{c,a}ss set filetype=css
"au! FileType scss syntax cluster sassCssAttributes add=@cssColors
"autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

if has("gui_macvim")
    set guifont=Monaco:h15
    set macmeta
    "let macvim_skip_cmd_opt_movement=1
    "let macvim_hig_shift_movement=1
    "vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
    map \p :call setreg("\"",system("pbpaste"))<CR>p
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
    
    inoremap <C-e> <END>
    inoremap <C-a> <HOME>
    inoremap <C-f> <Right>
    inoremap <C-b> <Left>
    inoremap <M-f> <S-Right>
    inoremap <M-b> <Esc>bi
    inoremap <M-n> <Down>
    inoremap <M-p> <Up>
    inoremap <A-b> <Esc>bi
else
    set guifont=Monospace\ 14
    "let g:Powerline_symbols = 'fancy'
    inoremap <M-b> <Esc>bi
    inoremap <A-b> <Esc>bi
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
Bundle 'tpope/vim-dispatch'
"Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-endwise'
"方便添加删除两端 括号 标签之类的
Bundle 'tpope/vim-surround'
"Bundle 'pbrisbin/vim-mkdir'
"状态栏
"Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'vim-scripts/SyntaxComplete'
"Bundle 'fatih/vim-go'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jiangmiao/auto-pairs.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'msanders/snipmate.vim.git'
"Bundle 'SirVer/ultisnips'
Bundle 'kchmck/vim-coffee-script.git'
"Bundle 'AndrewRadev/vim-eco'
"Bundle 'maksimr/vim-jsbeautify'
"markdown即时预览，需要装nodejs, 
"[sudo] npm -g install instant-markdown-d
"Copy the after/ftplugin/markdown/instant-markdown.vim file from this repo
"into your ~/.vim/after/ftplugin/markdown/ (creating directories as
"necessary), or follow your vim package 
"安装完后，md 文件 set ft=markdown后，打开localhost:8090就可以即时预览了
"Bundle 'suan/vim-instant-markdown'
"代码补完
"Bundle 'Shougo/neocomplcache'
"Bundle 'tpope/vim-markdown'
"Bundle 'skammer/vim-css-color'
Bundle 'scrooloose/nerdcommenter'
"方便对齐 冒号啊，制作表格的情况
Bundle 'godlygeek/tabular' 
"Bundle 'flazz/vim-colorschemes'
Bundle 'mileszs/ack.vim'
"提示代码calss method之类的
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'oguzbilgic/sexy-railscasts-theme'
Bundle 'sickill/vim-monokai'
Bundle 'mattn/emmet-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'slim-template/vim-slim'
"Bundle 'rstacruz/sparkup'
"让vim光标正常的插件
"Bundle 'sjl/vitality.vim'
Bundle 'vim-scripts/ruby-matchit'
"Bundle 'vim-scripts/matchit.zip'
"Bundle 'vim-scripts/mru.vim'
"代码检查
Bundle 'scrooloose/syntastic'
" javascript模板
"Bundle 'pangloss/vim-javascript'
"Bundle 'briancollins/vim-jst'
"Bundle 'mxw/vim-jsx'
"Bundle "othree/javascript-libraries-syntax.vim"
" vim-scripts repos
"Bundle 'mustache/vim-mustache-handlebars'
"Bundle 'FuzzyFinder'
"Bundle 'blackboard.vim'
Bundle 'L9'
"Bundle "Valloric/YouCompleteMe"
"elixir
"Bundle 'elixir-lang/vim-elixir'

"VUE
Bundle "posva/vim-vue"
"Bundle "othree/html5.vim"

"TypeScript
"Bundle "leafgarland/typescript-vim"

"highlight"
Bundle 'jaxbot/semantic-highlight.vim'
Bundle 'lfv89/vim-interestingwords'

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
"let g:ackprg="ack-grep -H --nocolor --nogroup --column -i log"  "ack用的 

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

"map <S-F4> <Esc>:FufFile<CR>
"map <F4> <Esc>:FufBuffer<CR>

"cp ~/.vimrc ~/StudyNotes/vimrc.txt

"colorscheme blackboard

"zencoding
let g:user_zen_settings = { 
  \  'indentation' : '  ', 
  \  'perl' : { 
  \    'aliases' : { 
  \      'req' : 'require ' 
  \    }, 
  \    'snippets' : { 
  \      'use' : "use strict\nuse warnings\n\n", 
  \      'warn' : "warn \"|\";", 
  \    } 
  \  } 
  \} 
 
  ""let g:user_zen_expandabbr_key = '<c-l>,'    "设置为ctrl+e展开
  let g:user_zen_leader_key = '<c-l>'
  let g:use_zen_complete_tag = 1
""" end_zencoding

""sparkup
"let g:sparkupExecuteMapping = '<C-e>'

"let g:sparkupNextMapping =
"""end_sparkup

if has("gui_running")
else
  "set t_Co=16
"设置shell下面的光标形状
  "let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  "let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"让tmux也支持光标形状
  "if exists('$TMUX')
    "let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    "let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  "else
    "let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    "let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  "endif
endif

let g:AutoPairsShortcutFastWrap='<C-g>'
imap <leader>1 -><Esc>a
imap <leader>2 =><Space><Esc>i
imap <leader>3 <%%><Esc>hi
imap <leader>4 <><Esc>i
imap <leader>5 =><Space><Esc>i
imap <leader>s #{}<Esc>i
imap <leader>6 <%%><Esc>hi
imap <leader>f ()=><Esc>a
imap <leader>c console.log()<Esc>i
nnoremap <Leader>v :SemanticHighlightToggle<cr>

nnoremap <silent> <leader>L :call UncolorAllWords()<cr>

"neocomplcache
"let g:acp_enableAtStartup = 0
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1

"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:user_emmet_leader_key = '<c-l>'

let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'txt'] }

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"vim-markdown
"let g:vim_markdown_folding_disabled=1

"syntaxcomplete
"if has("autocmd") && exists("+omnifunc") 
  "autocmd Filetype * 
        "\ if &omnifunc == "" | 
        "\ setlocal omnifunc=syntaxcomplete#Complete | 
        "\ endif 
"endif 

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/public/*,*.log
filetype plugin on
colorscheme Monokai
syntax on
set shell=bash\ -i
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:used_javascript_libs = 'underscore,jquery,jasmine'

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:ycm_path_to_python_interpreter = "~/.pyenv/shims/python"
"let g:python_host_prog  = '~/.pyenv/shims/python'
"let g:ycm_server_python_interpreter = "~/.pyenv/shims/python"

"let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

let g:ycm_key_list_select_completion = ['<Down>', '<C-N>']

let g:vue_disable_pre_processors=1


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dist/*

autocmd FileType ruby setlocal et sta sw=2 sts=2
autocmd FileType python setlocal et sta sw=4 sts=4


"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  "\ 
"}


"NeoBundle Scripts-----------------------------
"
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'HerringtonDarkholme/yats.vim'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'chemzqm/wxapp.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
