" 将下面配置文件加入到.vimrc文件中
set nocompatible
filetype off

" 将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-run-interactive'
Plugin 'tomasr/molokai'  " 主题 molokai

" mokokai
let g:molokai_original = 1
set background=dark
set t_Co=256
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.a$', '\.o$', '\.out$', '\.pcx$', '\.png$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
autocmd vimenter * if !argc() | NERDTree | endif " Automatically open a NERDTree if no files where specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if the only window left open is a NERDTree
nmap <F5> :NERDTreeToggle<CR>   " Open a NERDTree

" Tagbar
let g:tagbar_width=35
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>

" ctrlpvim/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" Use <Leader>r + shell cmd
nnoremap <Leader>r :RunInInteractiveShell<space>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

call vundle#end()	
filetype plugin indent on

"代码基本相关部分
set hlsearch        "高亮反白
set backspace=2     "可以用退格见删除,有的时候会出现删除不了也要添加set nocompatible
set autoindent	    "自动缩排
set ruler	    			"可现实最后一行为状态
set showmode	    	"显示左下角一行状态
set bg=dark	    		"背景颜色
set autoread	    	"设置文件被其他修改后可以重新载入
set showcmd	    		"Display incomplete commands

syntax on	    			"根据语法检测，显示相应的颜色

set number 					"设置显示行号
set numberwidth=5

set tabstop=2 	    "设定tab宽度为4个字符
set autoindent shiftwidth=2    "设定自动缩进为4个字符

set incsearch      	"搜索时，输入的词句的逐字符高亮
set hlsearch 				"搜让查找到的字符串高亮显示（：nohlsearch可关闭）
set matchpairs+=<:>

set textwidth=80
set colorcolumn=+1

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"设置中文编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
