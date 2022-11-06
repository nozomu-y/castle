let s:dein_dir = expand('$HOME/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
    set nocompatible
endif

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    " Add the dein installation directory into runtimepath
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    " .toml file
    let s:rc_dir = expand('$HOME/.vim')
    let s:toml = s:rc_dir . '/dein.toml'
    let s:lazy_toml = s:rc_dir . '/dein_lazy.toml'
    " load toml file
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    " end configuration
    call dein#end()
    call dein#save_state()
endif

" Let dein manage dein
" if !has('nvim')
    " call dein#add('roxma/nvim-yarp')
    " call dein#add('roxma/vim-hug-neovim-rpc')
" endif

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

" END of dein.vim configuration
let g:dracula_colorterm = 0
" colorscheme nord
colorscheme dracula
" colorscheme iceberg
" set background=dark
" colorscheme hybrid

inoremap <silent> jj <ESC>
runtime! ~/.vim/config/*.vim


if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
set conceallevel=0

" setup for jupyter 
" end of jupyter setup

let g:python3_host_prog = '$HOME/.pyenv/shims/python3'

" setup for gitglutter
set updatetime=100

" enable mouse for all modes
set mouse=a


"文字コードをUFT-8に設定
set fenc=utf-8

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" 現在の行を強調表示
set cursorline

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" インデントはスマートインデント
set smartindent

" 括弧入力時の対応する括弧を表示
set showmatch

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
" set list listchars=tab:»-
set list listchars=tab:\ \ 
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4


" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

augroup vimrc-auto-cursorline
  autocmd!
  autocmd CursorMoved,CursorMovedI,WinLeave * setlocal cursorline
  autocmd CursorHold,CursorHoldI * setlocal nocursorline
augroup END

syntax on

set nowrap

set autoindent

set ruler
set number
set list
set wildmenu
set showcmd

set softtabstop=4
set smarttab

set diffopt=iwhite

set clipboard=unnamed

set backspace=indent,eol,start

source ~/.vim/config/coc.vim


