# CLAUDE.md

このファイルは、このリポジトリで作業する際に Claude Code (claude.ai/code) にガイダンスを提供します。

## リポジトリ概要

各種開発ツールの個人設定ファイルを管理するdotfilesリポジトリです。シンボリックリンクを使用して、一元管理された場所から設定ファイルを管理します。

## セットアップコマンド

### 完全セットアップ
```bash
make setup        # dein.vimを使ったvim設定をセットアップ
```

### 個別コンポーネント
```bash
make gitconfig    # git設定のシンボリックリンクを作成
make tmux.conf    # tmux設定のシンボリックリンクを作成
make bash_profile # bash設定を ~/.bash_profile に追記
make vimrc        # dein.vimをインストールしてvim設定のリンクを作成
```

### 手動でのDein.vimインストール
```bash
make -C dein      # dein.vimプラグインマネージャーをダウンロード・インストール
```

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

- **_bashrc**: Bashシェル設定
  - rm, cp, mvの安全なエイリアス (対話モード)
  - ステータス表示付きGitプロンプト統合
  - Gitブランチ表示付きカスタムPS1プロンプト
  - Git補完機能有効化

- **_gitignore**: グローバルgitignoreルール
  - 除外対象: *.swp, .DS_Store, .vscode

### ブランチ情報
- **master**: 安定版設定のメインブランチ
- **zsh**: 現在の作業ブランチ (masterとの差分なし)
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