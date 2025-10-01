# CLAUDE.md

このファイルは、このリポジトリで作業する際に Claude Code (claude.ai/code) にガイダンスを提供します。

## リポジトリ概要

各種開発ツールの個人設定ファイルを管理するdotfilesリポジトリです。シンボリックリンクを使用して、一元管理された場所から設定ファイルを管理します。

## セットアップコマンド

### 完全セットアップ
```bash
make setup        # vim設定とzsh設定をセットアップ
```

### 個別コンポーネント
```bash
make gitconfig    # git設定のシンボリックリンクを作成
make tmux.conf    # tmux設定のシンボリックリンクを作成
make zshrc        # zsh設定のシンボリックリンクを作成
make vimrc        # dein.vimをインストールしてvim設定のリンクを作成
```

### 手動でのDein.vimインストール
```bash
make -C dein      # dein.vimプラグインマネージャーをダウンロード・インストール
```

## Ubuntu環境でのセットアップ

### 必要なパッケージのインストール
```bash
# 基本パッケージ
sudo apt update
sudo apt install -y zsh git vim curl

# zshプラグイン（オプション）
sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting

# zshをデフォルトシェルに設定
chsh -s $(which zsh)
```

### 環境別の動作
- **PATH設定**: macOSとLinuxで自動的に最適なPATHを設定
- **zshプラグイン**:
  - macOS: Homebrew経由で自動読み込み
  - Linux: `/usr/share/`配下から自動読み込み
- **Gitプロンプト**:
  - zsh-git-prompt利用可能時: 詳細なステータス表示
  - 未インストール時: シンプルなブランチ名表示
- **lsコマンド**:
  - macOS: `ls -FG` (BSD版)
  - Linux: `ls -F --color=auto` (GNU版)

## リポジトリ構造

### 主要な設定ファイル
- **_vimrc**: dein.vimプラグインマネージャーを使用したVim設定
  - プラグイン: NERDTree, emmet-vim, vim-go, vim-virtualenv
  - タブナビゲーション用カスタムキーマップ (Ctrl+n/p)
  - 日本語テキストハイライトと不可視文字の表示
  - タブ設定: 2スペース、expandtab有効

- **_gitconfig**: Git設定 (/Users/yu.ito/dotfiles/_gitconfig)
  - 便利なエイリアス: `st` (status), `ci` (commit), `co` (checkout), `b` (branch -vvv)
  - グラフ表示付きログエイリアス: `logg`, `logs`, `log1`
  - デフォルトエディタをVimに設定、UTF-8エンコーディング
  - リベース時の自動stash有効化

- **_zshrc**: Zshシェル設定（macOS・Linux両対応）
  - OS別PATH設定（macOS: Homebrew含む、Linux: 標準構成）
  - 環境別zshプラグイン読み込み（Homebrew/apt）
  - Gitプロンプト統合（zsh-git-prompt利用可能時は詳細表示、未インストール時は簡易表示）
  - OS別エイリアス設定: python, rm, cp, mv, vi, ls系（BSD/GNU対応）, cc, color

- **_gitignore**: グローバルgitignoreルール
  - 除外対象: *.swp, .DS_Store, .vscode

### ブランチ情報
- **master**: 安定版設定のメインブランチ
- **zsh**: zsh環境への移行用作業ブランチ（現在のブランチ）
- **test**: テスト用ブランチ

## 開発ガイドライン

1. **変更を加える前に**:
   - 既存の設定ファイルのバックアップを作成
   - コミット前にローカルで変更をテスト

2. **シンボリックリンク管理**:
   - すべての設定ファイルは ~/dotfiles/ からのシンボリックリンクを使用
   - 編集前にリンクが正しく作成されていることを確認

3. **Vimプラグイン管理**:
   - プラグインはdein.vimで管理
   - プラグインディレクトリ: ~/dotfiles/_vim/dein/
   - プラグイン追加方法: _vimrc内のdein#add()呼び出しを編集

4. **Gitワークフロー**:
   - 効率化のため設定済みgitエイリアスを使用
   - 履歴確認には視覚的なlogコマンドを活用
   - リベース時の自動stashが有効化されています