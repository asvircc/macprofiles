" 将下面配置文件加入到.vimrc文件中
set nocompatible  	" 必须
filetype off		" 必须

" 将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 使用Vundle管理插件，必须
Plugin 'gmarik/Vundle.vim'

"
" 其他插件
"

call vundle#end() 			" 必须
filetype plugin indent on	" 必须


"代码基本相关部分
set hlsearch        "高亮反白
set backspace=2     "可以用退格见删除,有的时候会出现删除不了也要添加set nocompatible
set autoindent	    "自动缩排
set ruler	    "可现实最后一行为状态
set showmode	    "显示左下角一行状态
set bg=dark	    "背景颜色
set autoread	    "设置文件被其他修改后可以重新载入

syntax on	    "根据语法检测，显示相应的颜色

"设置显示行号
set number

set tabstop=4 	    "设定tab宽度为4个字符
set shiftwidth=4    "设定自动缩进为4个字符

"设置中文编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
