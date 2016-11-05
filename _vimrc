"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/itouyuu/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/itouyuu/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('scrooloose/nerdtree')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

"End dein Scripts-------------------------


"タブ
set expandtab "タブ入力をスペースにする
set tabstop=4 shiftwidth=4 softtabstop=4 autoindent

"""""""""""""""""""""""""
"検索
set incsearch
set ignorecase
set smartcase
set incsearch " do incremental searching
set hlsearch


""""""""""""""""
" キーマップ設定

" タブ移動
nnoremap <C-n> gt
nnoremap <C-p> gT

"""""""""""
" 配色

" vimdiff 関連
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

" 不可視文字の表示
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" 全角スペース表示
if has("syntax")
  syntax on
  syn sync fromstart " PODバグ対策
  function! ActivateInvisibleIndicator()
    " 下の行の"　"は全角スペース
    syntax match InvisibleJISX0208Space "　" display containedin=ALL
    highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
    "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
    "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=NONE gui=undercurl guisp=darkorange
    "syntax match InvisibleTab "\t" display containedin=ALL
    "highlight InvisibleTab term=underline ctermbg=white gui=undercurl guisp=darkslategray
  endfunction
  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
  augroup END
endif

""""""""""""""""""""""
" ファイル形式別設定
" twig
autocmd BufWinEnter,BufNewFile *.twig set filetype=html
" Makefile
autocmd FileType make setlocal noexpandtab
" Google Apps Scripts
autocmd BufWinEnter,BufNewFile *.gs set filetype=javascript
