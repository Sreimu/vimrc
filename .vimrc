"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" 不要使用vi动键盘模式，而是vim自己的
set nocompatible

" 显示行号
set nu!
" history文件中需要记录的行数
set history=100

" 在处理未保存或只读文件的时候，弹出确认
" set confirm

" 与windows共享剪贴板
" set clipboard+=unnamed

" 侦测文件类型 
"filetype on

" 载入文件类型插件 
"filetype plugin on

" 为特定文件类型载入相关缩进文件 
"filetype indent on

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

syntax on

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
"
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" <C-x><C-o>
"autocmd FileType php set omnifunc=phpcomplete
" Solarized Colorscheme for Vim"
set t_Co=256
colorscheme solarized
set background=dark
"highlight Normal ctermfg=1 ctermbg=1
let g:solarized_termcolors=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
" set showmatch

" 匹配括号高亮的时间（单位是十分之一秒
" set matchtime=1

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases
" set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索
set incsearch 

" 输入:set list命令是应该显示些啥
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
" set novisualbell

" 我的状态行显示的内容（包括文件类型和解码
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\%H:%M\")}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 不要换行
set nowrap 

" 在行和段开始处使用制表符
set smarttab






" Vundle proflie
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/Bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

"PowerLine插件 状态栏增强展示
Plugin 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏

"NERDTree文件系统
Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'tacahiroy/ctrlp-funky'

Plugin 'ivalkeen/vim-ctrlp-tjump'

"Plugin 'vim-scripts/taglist.vim'

Plugin 'majutsushi/tagbar'

Plugin 'pangloss/vim-javascript'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'ternjs/tern_for_vim'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Raimondi/delimitMate'

Plugin 'maksimr/vim-jsbeautify'

"Plugin 'mileszs/ack.vim'

Plugin 'rking/ag.vim'

Plugin 'juneedahamed/svnj.vim'

Plugin 'fholgado/minibufexpl.vim'

"Plugin 'vim-scripts/vcscommand.vim'

Plugin 'easymotion/vim-easymotion'

"Plugin 'Townk/vim-autoclose'

Plugin 'mhinz/vim-signify'

Plugin 'scrooloose/nerdcommenter'

Plugin 'juneedahamed/vc.vim'

Plugin 'xolox/vim-session'

Plugin 'xolox/vim-misc'

Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"PowerLine
set laststatus=2
let g:Powline_symbols='fancy'

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
:map <silent> <F10> :NERDTreeToggle<CR>
noremap <Leader>nf :NERDTreeFind<CR>
let g:NERDTreeWinSize = 37
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1 
let g:NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]

" CtrlP
"let g:ctrlp_cmd = 'CtrlPMRU'
map <Leader>ft :CtrlPTag<CR>
map π :CtrlPBuffer<CR>
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_regexp = 1
"let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_by_filename = 1
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|framwork)$'
let g:ctrlp_show_hidden = 0
"map <leader>fp :CtrlPMRU<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
			\ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
			\ }
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
"let g:ctrlp_max_height=15
let g:ctrlp_match_window = 'results:20'
let g:ctrlp_mruf_max=1000
"let g:ctrlp_max_files=1050000
"let g:ctrlp_max_depth = 100
let g:ctrlp_follow_symlinks=1
let g:ctrlp_lazy_update = 1

" CtrlP-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
let g:ctrlp_extensions = ['funky']

" CtrlP-tjump
let g:ctrlp_tjump_only_silent = 1
nnoremap <c-]> :CtrlPtjump<CR>
vnoremap <c-]> :CtrlPtjumpVisual<CR>

" Tagbar
"let Tlist_Ctags_Cmd = 'ctags'
map <silent> <F9> :TagbarToggle<CR>
set tags=tags
let g:tagbar_ctags_bin = 'ctags'
let g:Tagbar_autofocus = 1

" YouCompleteMe
let g:ycm_add_preview_to_completeopt=0
"let g:ycm_key_invoke_completion = '<Enter>'
let g:ycm_confirm_extra_conf=0
"set completeopt-=preview
let g:ycm_filetype_blacklist = {
	\ 'tagbar' : 1,
	\ 'qf' : 1,
	\ 'notes' : 1,
	\ 'markdown' : 1,
	\ 'unite' : 1,
	\ 'text' : 1,
	\ 'vimwiki' : 1,
	\ 'gitcommit' : 1,
\}

" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

" Ack
nnoremap <Leader>fg :Ag<Space>

" MiniBufExp
let g:miniBufExplHideWhenDiff = 1
let g:miniBufExplorerAutoStart = 0
noremap <TAB> :MBEbn<CR>
noremap <S-TAB> :MBEbp<CR>
noremap <Leader>bd :MBEbd<CR>
map <silent> <F11> :MBEToggle<CR>

" SVNJ
nnoremap <Leader>st :SVNStatus<CR>
nnoremap <Leader>df :SVNDiff<CR>
nnoremap <Leader>sl :SVNLog<CR>
nnoremap <silent> <Leader>dc <Esc><C-w>h:diffoff!<CR>:bd!<CR>:GoSVNJ<CR>
let g:svnj_fuzzy_search = 0

" Session
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"delimitMate
let delimitMate_expand_cr = 1

" map
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
nnoremap <Leader>s :w<CR> 
nnoremap <Leader>q :call Close()<CR> 
nnoremap ∑ :MBEbd<CR>
nnoremap ¡ :b1<CR>
nnoremap ™ :b2<CR>
nnoremap £ :b3<CR>
nnoremap ¢ :b4<CR>
nnoremap ∞ :b5<CR>
nnoremap § :b6<CR>
nnoremap ¶ :b7<CR>
nnoremap • :b8<CR>
nnoremap ª :b9<CR>
"nnoremap <ESC> <ESC><ESC>

" autocmd
autocmd VimLeave * call Close() 
func Close()
	if exists(':NERDTreeClose')
		exe "NERDTreeClose"
	endif
	exe ":q!"
endfunc

" colors
highlight Yellow ctermfg=172
