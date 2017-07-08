"""""""""""""""""
" Vundle settings
"""""""""""""""""
filetype off

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/dotfiles/_vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/dotfiles/_vim/dein')
  call dein#begin('~/dotfiles/_vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/dotfiles/_vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/dein.vim')
  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


"""""""""""""""""""""""""
" ZenCoding shortcut
let g:user_zen_expandabbr_key = '<C-y>'

syntax on
set number

set autoindent
set smartindent

set nowrap

"タブ
set expandtab "タブ入力をスペースにする
"set tabstop=2 shiftwidth=2 softtabstop=2 autoindent

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

" スペース表示
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
set list

" twigファイル配色設定
autocmd BufWinEnter,BufNewFile *.twig set filetype=html

" nerdtree
autocmd VimEnter * execute 'NERDTree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\.pyc']
