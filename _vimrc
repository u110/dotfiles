filetype plugin indent on
syntax on
set number

set autoindent
set smartindent

set nowrap

"タブ
set expandtab "タブ入力をスペースにする
set tabstop=2 shiftwidth=2 softtabstop=2 autoindent

"検索
set incsearch
set ignorecase
set smartcase
set incsearch		" do incremental searching
set hlsearch


""""""""""""""""
" キーマップ設定
""""""""""""""""
" タブ移動
nnoremap <C-n> gt
nnoremap <C-p> gT


"""""""""""
" 配色
""""""""""" 
" vimdiff 関連
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

