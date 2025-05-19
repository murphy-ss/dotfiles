" --- vim-plug settings ---
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'        " Git操作をVimから行う
Plug 'tpope/vim-surround'        " 括弧や引用符の操作を簡単にする
Plug 'preservim/nerdtree'       " ファイルエクスプローラー
Plug 'vim-airline/vim-airline'    " おしゃれで高機能なステータスライン
Plug 'vim-airline/vim-airline-themes' " vim-airlineのテーマ集
Plug 'ryanoasis/vim-devicons'     " NERDTreeなどにアイコンを表示
Plug 'sheerun/vim-polyglot'      " 多くの言語のシンタックスハイライト等を強化
Plug 'jiangmiao/auto-pairs'      " 括弧などを自動で閉じる
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " 高速な曖昧検索ツールfzf
Plug 'junegunn/fzf.vim'         " fzfをVimから使いやすくする連携プラグイン
Plug 'Yggdroot/indentLine'      " インデントを可視化する
Plug 'mhinz/vim-startify'       " Vim起動時のスタート画面を高機能にする
Plug 'rakr/vim-one'             " One Darkカラースキーム (Atom風)
Plug 'morhetz/gruvbox'          " 人気のカラースキーム Gruvbox
Plug 'dracula/vim', { 'as': 'dracula' } " Draculaカラースキーム

call plug#end()
" --- vim-plug settings end ---

set encoding=utf-8
scriptencoding utf-8
"set encoding=utf-8はファイル読み込み時の文字コードの設定
"scriptencoding utf-8はvim内でマルチバイト文字を使う場合の設定

"perltidy
map ,pt <Esc>:%! perltidy -se<CR>
map ,ptv <Esc>:'<,'>! perltidy -se<CR>

"カーソル系の設定
"コードの色を分ける
syntax on
"行番号を表示する
set number
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set number " 行番号を表示
set cursorline " カーソルラインをハイライト

"タブや空白文字を表示させる
set ai "新しい行を作った時に高度な自動インデントを行う
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=4 " 画面上でタブ文字が占める幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 " smartindentで増減する幅

set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解

"検索系の設定
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

"タブとスペースを表示
set list
set listchars=tab:>-,trail:^

"ペーストがずれるのを防ぐ
set paste
