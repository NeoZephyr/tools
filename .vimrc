set number
syntax on

" colorscheme molokai

" git clone https://github.com/dracula/terminal-app.git
colorscheme dracula

" 突出显示当前行
set cursorline 

" 突出显示当前列
" set cursorcolumn

" 设置 Tab 长度为 4 空格
set tabstop=4

" 设置自动缩进长度为 4 空格
set shiftwidth=4

" 继承前一行的缩进方式，适用于多行注释
set autoindent

" 开启实时搜索
" set incsearch
set hlsearch

" 搜索时大小写不敏感
set ignorecase

"set foldmethod=indent
set pastetoggle=<F2>

" 定义快捷键的前缀，即 <Leader>
let mapleader=','

" v 模式下复制内容到系统剪切板
" vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
" nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
" nmap <Leader>v "+p

" 使用系统剪切板
set clipboard=unnamed

" 使用 jj 进入 normal 模式
inoremap jj <Esc>`^
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> [n :bnext<cr>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'altercation/vim-colors-solarized'

" 导航目录的侧边栏
Plug 'scrooloose/nerdtree'

" 导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'

" 大纲式导航
" https://ctags.io/
" https://github.com/jstemmer/gotags
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'shougo/deoplete.nvim'

" 代码自动完成
" <C-p> previous
" <C-n> next
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

" 自动配对
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1

" 忽略文件的显示
let NERDTreeIgnore = [
	\ '\.git$', '\.swp$', '\.DS_Store$',
	\]

let g:ctrlp_map = '<c-p>'

nmap ss <Plug>(easymotion-s2)

" tagbar
nnoremap <leader>t :TagbarToggle<cr>

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:deoplete#enable_at_startup = 1

set updatetime=100

let g:go_fmt_autosave=0

" let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
" let g:go_autodetect_gopath = 1
" let g:go_list_type = "quickfix"
" let g:go_version_warning = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_generate_tags = 1
" let g:godef_split=2

