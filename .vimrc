"perltidy
map ,pt <Esc>:%! perltidy -se<CR>
map ,ptv <Esc>:'<,'>! perltidy -se<CR>

"コードの色を分ける
syntax on
"行番号を表示する
set number

"タブや空白文字を表示させる
"tab:タブ文字 trail:行末のスペースを表示 nbsp:ノーブレイクスペース eol:改行を表示
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲

