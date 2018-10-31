set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/neco-vim'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mattn/emmet-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'alvan/vim-closetag'
Plugin 'Yggdroot/indentLine'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'ervandew/supertab'
Plugin 'OmniCppComplete' 
Plugin 'othree/jspc.vim'
Plugin 'tomasr/molokai' 
Plugin 'digitaltoad/vim-pug' 
Plugin 'dNitro/vim-pug-complete' 
Plugin 'itspriddle/vim-jquery'
Plugin 'posva/vim-vue'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'leshill/vim-json'
Plugin 'rhysd/vim-clang-format'
Plugin 'geoffharcourt/vim-matchit'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'AutoComplPop'
Bundle 'OmniSharp/omnisharp-vim'
Plugin 'mxw/vim-jsx'
Plugin 'ternjs/tern_for_vim'
call vundle#end()            " required

syntax on
set sw=4
set ts=4
set et
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu
set mousemodel=popup

"-------------------显示相关---------------------------------------
set background=dark
colorscheme material
set cul "高亮光标所在行
set cuc
set guifont=Monaco:h14:b
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=2     " 光标移动到buffer的顶部和底部时保持3行距离  
set laststatus=2   " 启动显示状态行(1),总是显示状态行(2)  
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=2
" 统一缩进为2
set softtabstop=2
set shiftwidth=2
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set helplang=cn
" 总是显示状态行
set cmdheight=1
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=$,@,%,#,-,_




"快捷键配置----------------------------------------------------------------------------
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
"set clipboard=unnamed
"去空行  
"F3自动格式化代码
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
"html标签自动补全
map! <C-O> <C-Y>,



"实用配置------------------------------------------------------------------------------
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 设置当文件被改动时自动载入
set autoread
"自动保存
set autowrite
set t_vb
" 在处理未保存或只读文件的时候，弹出确认
set confirm

"禁止生成临时文件
set noundofile
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"set tags=tags
set autochdir "输出时只有文件名，不带./ ../等目录前缀(默认了执行％在当前的目录下)
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8


"在插入模式中使用Ctrl+v粘贴全局剪贴板内容
imap <C-V> <Esc>"+gp
nmap <C-V> "+gp

"在Visual模式中使用Ctrl+c复制内容到全局剪贴板
vnoremap <C-c> "+y

"在Visual模式中使用Ctrl+x剪切内容到全局剪贴板
vnoremap <C-x> "+x

"三种莫模式保存
nmap <C-S> :update<CR>




let g:closetag_close_shortcut = '<leader>'
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256
filetype plugin indent on    " required
