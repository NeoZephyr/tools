## 窗口
窗口分割
:vs 竖分屏
:sp 横分屏

ctrl + w + w/hijk 窗口切换
ctrl + w + HL 窗口移动
ctrl + w + p 两个窗口之间切换

## 缓存区
:ls 查看缓冲区
:e 打开新文件
:b 切换缓冲区
:e! 放弃更改

:v visual 模式
ctrl + [ 切换到 normal 模式


## 移动、搜索、编辑
ctrl + o 快速返回到之前的位置
gi 快速跳转到最后一次编辑的地方并进入插入模式
zz 把屏幕放到中间

w/W 移动到下一个单词开头，大写字符表示以空格符分隔的单词
e/E 移动到下一个单词结尾
b/B 回到上一个单词开头


f{char} 搜索字符，;/, 表示下一个/上一个
F{char} 反向搜索
set incsearch 增量搜索
`*/# 移动到与当前单词匹配的地方`


diw 删除单词
daw 删除单词及后面空格
di{char} 删除字符之间的字符
dt{char} 删除到某个字符
D 删除到行尾
d0 删除到行首

ciw 删除单词进入插入模式
caw 删除单词进及后面空格入插入模式
ci{char} 删除字符之间的字符进入插入模式
ct{char} 删除到某个字符进入插入模式
C 删除到行尾进入插入模式

viw 选择单词
vaw 选择单词
vi{char} 选中字符之间的字符
vt{char} 选中到某个字符
V 选择行

ctrl + v 选择块

yiw
yaw
yi{char}
yt{char}
y0
y$
Y

防止复制粘贴缩进
:set paste
:set nopaste

复制、剪贴到指定寄存器
"{register}
系统剪贴板寄存器
"+

echo has('clipboard')
:set clipboard=unnamed


:% s/this/self/g 将所有 this 替换为 self
:1,20 s/this/self/g 将 1- 20 行 this 替换为self
:% s/\<this\>/self/g 精确匹配
:1,20 s/this//n 统计 1- 20 行 this 个数

U 选择字符转换为大写
u 选择字符转换为小写


ctrl + n/p 补全单词
ctrl + x + f 补全文件名
ctrl + x ctrl + o 补全代码


## 映射
let mapleader=','
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>
inoremap jj <Esc>`^

切换 buffer
nnoremap <slient> [b :bprevious<CR>
nnoremap <slient> [n :bnext<CR>

切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

强制写入
cnoremap w!! w !sudo tee % >/dev/null

基本映射
:map <space> viw
取消基本映射
:unmap <space>

visual 下模式映射
:vmap \ U

insert 下模式映射
:imap <c-d> <Esc>ddi 删除一行

normal, visual, insert 下非递归模式映射
nnoremap
vnoremap
inoremap


## 插件
vim-plug
:PlugInstall

mhinz/vim-startify
vim-airline/vim-airline
yggdroot/indentline
vim-colors-solarized
scrooloose/nerdtree
ctrlpvim/ctrlp.vim
easymotion/vim-easymotion

tpope/vim-surround
ds "
cs " '
cs ) ]
ys iw "

junegunn/fzf.vim
Ag [PATTERN]
Files [PATH]

ctrl + k 上移
ctrl + j 下移

brooth/far.vim
:Far pow bow **/*.go
:Fardo

vim-go

majutsushi/tagbar

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

lfv89/vim-interestingwords
<leader>k
<leader>K

shougo/deoplete.nvim
sbdchd/neoformat
w0rp/ale

tpope/vim-commentary
gcc

tpope/vim-fugitive
Gblame
Gdiff

airblade/vim-gitgutter

junegunn/gv.vim
:GV

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
:GoFmt
let g:go_fmt_command = "goimports"


tmux

笨方法学 vimscript

https://vimawesome.com/plugin/youcompleteme
