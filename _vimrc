"""""""""""""""""
" Vundle settings
"""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle で管理するプラグインを書いていく
" required!
Bundle 'gmarik/vundle'

" My Bundles in here
Bundle 'unite.vim'
Bundle 'ZenCoding.vim'
Bundle 'The-NERD-tree'

" required!
filetype plugin indent on

"""""""""""""""""""""""""
" ZenCoding shortcut
let g:user_zen_expandabbr_key = '<C-y>'

syntax on
set number

set autoindent
set smartindent

set nowrap

"""""""""""""""""""""""""
"タブ
set expandtab "タブ入力をスペースにする
"set tabstop=2 shiftwidth=2 softtabstop=2 autoindent

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
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

" 不可視文字の表示
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" 全角スペース表示
if has("syntax")
  syntax on
  " PODバグ対策
  syn sync fromstart
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

" twigファイル配色設定
autocmd BufWinEnter,BufNewFile *.twig set filetype=html
