" ======================================================================
"    FileName: .vimrc
"     Project: alex
"      Author: Yong Yang, Department of Mathematics, UTA
"       Email: yong.yang@mavs.uta.edu
"     Created: 2016-11-16 15:40:21
"  LastChange: 2016-11-18 21:49:23
" ======================================================================

"----------------------------------------常用命令、快捷键---------------------------------------
" <F2>                       --生成tags,在windows下需要把vim73加入环境变量path中。
" <F3>                       --生成grep光标处字符串所在位置列表，默认搜索当前目录相同扩展名文件
" <F4>                       --编译 [支持Fortran]
" <F5>                       --运行 [支持Fortran,Python]
"
" a[小写]                    --正常模式下，进入插入模式，光标出现在右面
" i[小写]                    --正常模式下，进入插入模式，光标出现在左面
" u[小写]                    --正常模式下，撤销上一个编辑动作
" .                          --正常模式下，重复上一个编辑动作
" Ctrl + r[小写]             --正常模式下，还原撤销的编辑动作
" Ctrl + s                   --保存文件,如果是F90文件，将自动加载作者、时间信息
" Ctrl + ]                   --转到函数定义
" Ctrl + t                   --返回调用函数
" Ctrl + q                   --为代码注释/取消注释
" Ctrl + c                   --复制选中内容到剪贴板
" Ctrl + v                   --Insert mode,paste
" Ctrl + w +v                --左右分割窗口
" Ctrl + w +s                --上下分割窗口
" Ctrl + w +q                --关闭窗口
"
" [b, ]b                     --切换buffer
" [t, ]t                     --切换tab
"
" Tab键                      --插入模式下的全功能语法结构补全[neocomplcache和ultisnips插件]
" Shift + Insert             --向Vim中粘贴从别处复制的内容

" nt                         --打开NERDTree [非插入模式]
" tl                         --打开TagList [非插入模式]

" \tt                        --vimwiki设置Toggle on/off键
" \wn, \wp                   --vimwiki设置Link之间跳转

" w!!                        --写入只读文件
" w", w'                     --给当前单词添加引号

" <, >                       --在Normal Mode和Visual/Select Mode下，利用<和>键来缩进文本

" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠

" :set syntax=fortran        --手动选择语法高亮 [或 :set filetype=fortran]

" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件



""""""""""""""""""""""VUNDLE PLUGIN""""""""""""""""""""

" 不兼容vi
set nocompatible

" 不检测文件类型
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'kabbamine/vcoolor.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-sexp'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mattn/emmet-vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'gorodinskiy/vim-coloresque'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'walm/jshint.vim'
" Plugin 'moll/vim-node'
" Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
" Plugin 'nvie/vim-flake8'
" if has('python')
    " Plugin 'davidhalter/jedi-vim'
    " Plugin 'axiaoxin/vim-json-line-format'
Plugin 'SirVer/ultisnips'
" endif
Plugin 'axiaoxin/favorite-vim-colorscheme'
" Plugin 'junegunn/vim-emoji'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets', {'pinned': 1}
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ihacklog/AuthorInfo', {'pinned': 1}
Plugin 'Shougo/neocomplete.vim'
Plugin 'jordwalke/VimCompleteLikeAModernEditor' " It is necessary to resolve the TAB conflict between neocomplete and ultisnips.
Plugin 'vimwiki/vimwiki'

call vundle#end()

" 针对不同的文件类型采用不同的缩进格式
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""BASE CONFIG"""""""""""""""""""""""

" 取消备份
set nobackup
set noswapfile
set noundofile

" 设定文件浏览器目录为当前目录
set autochdir

" 解决consle输出乱码
"language messages zh_CN.utf-8

" 状态栏配置
set laststatus=2

" 打开语法高亮
syntax enable

" 开启语法检测
syntax on

" vimrc文件修改之后自动加载
" autocmd! bufwritepost .vimrc source %

" 文件修改之后自动载入
set autoread

" yy直接复制到系统剪切板（For macvim）
set clipboard=unnamed

" 高亮搜索命中的文本
set hlsearch

" 随着键入即时搜索
set incsearch

" 搜索时忽略大小写
set ignorecase

" 有一个或以上大写字母时仍大小写敏感
set smartcase

set guifont=Monaco:h20

colorscheme Tomorrow-Night-Bright
" 使用自带配色
"colorscheme elflord
"set background=dark

" 在状态栏显示正在输入的命令
set showcmd

" 显示括号配对情况
set showmatch

" 引号 && 括号自动匹配
:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i

":inoremap > <c-r>=ClosePair('>')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

:inoremap ` ``<ESC>i

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

" :next, :make 命令之前自动保存
set autowrite

" 允许使用鼠标
set mouse=a

" 设置行号
set nu

" 退格键可用
set backspace=2

" 退格键一次删掉4个空格
set smarttab

" 缩进
set autoindent
set smartindent

" 保存文件时自动删除行尾空格或Tab
autocmd BufWritePre * :%s/\s\+$//e

" 保存文件时自动删除末尾空行
autocmd BufWritePre * :%s/^$\n\+\%$//ge

" 填充Tab
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

" 代码折叠 光标在缩进下方时用za命令折叠或展开
set fdm=indent
" 默认展开
set foldlevel=99

" 突出显示当前行，列
set cursorline
"set cursorcolumn

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
set t_ti= t_te=

" 打开文件时始终跳转到上次光标所在位置
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif




"""""""""""""""""""""""""KEY MAPPING""""""""""""""""""""

" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" 映射切换tab的键位
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

" normal模式下Ctrl+c全选并复制到系统剪贴板(linux必须装有vim-gnome)
nmap <C-c> gg"+yG
" visual模式下Ctrl+c复制选中内容到剪贴板
vmap <C-c> "+y

" Ctrl+v原样粘贴剪切板内容
inoremap <C-v> <ESC>"+pa

" Ctrl + S            保存文件
nmap <silent> <c-s> :call Save()<CR>
imap <c-s> <ESC>:call Save()<CR>a
vmap <c-s> :call Save()<CR>v
function Save()
	if &filetype == "fortran" || &filetype == "vim" || &filetype=="matlab"
		exec "AuthorInfoDetect"
		exec "w"
	else
		exec "w"
	endif
endfunction

" w!!写入只读文件
cmap w!! w !sudo tee >/dev/null %

" F2切换行号显示
" nnoremap <F2> :set nonu!<CR>:set foldcolumn=0<CR>

" nt打开目录树
nmap nt :NERDTreeToggle<CR>

" tl显示TagList
nmap tl :TagbarToggle<CR>

"<F2>设置工程Tags，这里X:\Project\tags是假设的刚刚生成的Tags所在具体位置，你需要根据自己的文件位置替代,
"ctags.exe在vim73目录下，需要将vim73添加到环境变量
map <F2> :call Get_tags()<CR>
imap <F2> <ESC> :call Get_tags()<CR>a
function Get_tags()
	let location=getcwd()
	exe "silent !ctags -R"
	set tags+=location\tags
endfunction

"<F3>生成grep光标处字符串所在位置列表，默认搜索当前目录相同扩展名文件
map  <F3> :vim /<c-r>=expand("<cword>")<cr>/gj ./*.<c-r>=expand("%:e")<cr><cr>:cw<cr>
imap <F3> <ESC> :vim /<c-r>=expand("<cword>")<cr>/gj ./*.<c-r>=expand("%:e")<cr><cr>:cw<cr>
vmap <F3> <ESC> :vim /<c-r>=@<cr>/gj ./*.<c-r>=expand("%:e")<cr><cr>:cw<cr>


" F4编译Fortran90源文件
" <F4> 一键保存、编译
map <F4> :call CompileF90()<CR>
imap <F4> <ESC>:call CompileF90()<CR>a
vmap <F4> <ESC>:call CompileF90()<CR>
func! CompileF90()
    " exec "w"
    "let compilecmd="!gfortran -Wall -pedantic"
    "let compileflag="-o %<"
    "exec compilecmd." % ".compileflag
	set efm=%A%f:%l:%c:,%E%f:%l:,%C,%C,%C,%C%t%*[^:]:\ %m,%C%.%#
	set makeprg=gfortran\ -fdefault-real-8\ -Wall\ -pedantic\ -Wno-tabs\ %\ -o\ %<.exe
	execute "silent make"
	set makeprg=make
	execute "cw 3"
endfunc

" F5运行脚本
map <F5> :call RunResult()<CR>
imap <F5> <ESC>:call RunResult()<CR>a
vmap <F5> <ESC>:call RunResult()<CR>
func! RunResult()
        exec "w"
        if &filetype == "fortran"
			exec "! ./%<.exe"
		elseif &filetype == "python"
			exec "!python %<.py"
        endif
endfunc

" <F6> 新建标签页
" map <F6> <Esc>:tabnew<CR>

" <F7> 拷贝粘贴代码不破坏缩进
" set pastetoggle=<F7>
" if has("win64") || has("win32")
    " " <F8> sort import and auto pep8
    " autocmd FileType python map <buffer> <F8> :!autopep8 -i -a --ignore=W690,E501 %<CR><CR>
    " " <F9> pep8 by yapf
    " autocmd FileType python map <buffer> <F9> :!yapf -i % --style=pep8<CR><CR>
" else
    " " <F8> sort import and auto pep8
    " autocmd FileType python map <buffer> <F8> :!autopep8 -i -a --ignore=W690,E501 %;isort %;<CR><CR>
    " " <F9> pep8 by yapf
    " autocmd FileType python map <buffer> <F9> :!yapf -i % --style=pep8;isort %;<CR><CR>
" endif

" 给当前单词添加引号
nnoremap w" viw<esc>a"<esc>hbi"<esc>lel
nnoremap w' viw<esc>a'<esc>hbi'<esc>lel

" 在Normal Mode和Visual/Select Mode下，利用<和>键来缩进文本
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv


" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" quicker window resize
nnoremap <C-Enter> <C-w>=
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-

" emoji
" imap <C-e> <C-X><C-U>

"Fortran 的相关配置
 let s:extfname = expand("%:e")
 if s:extfname ==? "f90"
     let fortran_free_source=1
     unlet! fortran_fixed_source
 else
     let fortran_fixed_source=1
     unlet! fortran_free_source
 endif
 let fortran_more_precise=1
 let fortran_do_enddo=1
 "去掉固定格式每行开头的红色填充
 let fortran_have_tabs=1



""""""""""""""""""""""""""""""PLUGIN CONFIG""""""""""""""""""""""""""
" NerdCommenter
let g:NERDSpaceDelims=1
"对NERD_commenter的设置，Ctrl+q为代码注释/取消注释
map <c-q> \c<space>
imap <c-q> <ESC>\c<space><CR>ki

" NERDTREE
" 不显示的文件
let NERDTreeIgnore=['\.pyc$', '\~$']
" show nerdtree when starts up
"autocmd vimenter * NERDTree
" 退出最后一个buff时也退出nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_cmd = 'CtrlPMixed'

"Ctrl-X Ctrl-U emoji补全
" set completefunc=emoji#complete

" instant-markdown
let g:instant_markdown_slow = 1

" airline
let g:airline_section_y = '%{strftime("%H:%M")}'
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1

" jedi
" autocmd FileType python setlocal completeopt-=preview
" let g:jedi#completions_command = "<C-n>"

" flake8
" let g:flake8_show_in_file = 1
" let g:flake8_show_in_gutter = 1
" autocmd! BufRead,BufWritePost *.py call Flake8()

" gitgutter
" let g:gitgutter_sign_modified = '*'
" let g:gitgutter_sign_removed = '-'

" jshint
" autocmd! BufRead,BufWritePost *.js :JSHint

" vim-table-mode: markdown
let g:table_mode_corner="|"

" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-clojure-static
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }

" vim-clojure-highlight
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry

" vCoolor.vim
let g:vcoolor_map = '<leader>cp'
let g:vcool_ins_rgb_map = '<leader>cpr'       " Insert rgb color.
let g:vcool_ins_hsl_map = '<leader>cph'       " Insert hsl color.
let g:vcool_ins_rgba_map = '<leader>cpra'      " Insert rgba color.

" authorinfo
let g:vimrc_author='Yong Yang, Department of Mathematics, UTA'
let g:vimrc_email='yong.yang@mavs.uta.edu'

" neocomplete.vim
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"VimWiki
" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'
" 使用鼠标映射
let g:vimwiki_use_mouse = 1
" 相关配置
let g:vimwiki_list = [{
\ 'path': 'E:/website/vimwiki',
\ 'path_html': 'E:/website/hellolife.github.io',
\ 'template_path': 'E:/website/template/',
\ 'template_default': 'def_template',
\ 'template_ext': '.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'C': 'c', 'C++': 'cpp', 'fortran': 'fortran', 'HTML': 'html', 'CSS': 'css', 'JavaScript': 'javascript', 'Vim': 'vim', 'Make': 'make'},}]
" 设置Toggle on/off键
nmap \tt <Plug>VimwikiToggleListItem
" 高亮checked Todo list
let g:vimwiki_hl_cb_checked=1
" 设置Link之间跳转
nmap \wn <Plug>VimwikiNextLink
nmap \wp <Plug>VimwikiPrevLink

