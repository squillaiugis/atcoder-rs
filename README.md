# AtCoder Rust

AtCoder の問題を Rust で解くためのワークスペースです。

## プロジェクト構成

```
.
├── README.md
├── Cargo.toml          # rust-analyzer用のダミーファイル
├── template.rs         # 問題用のテンプレートファイル
├── new_contest.sh      # 新しいコンテストディレクトリを作成するスクリプト
├── beginner/           # ABC（AtCoder Beginner Contest）用のディレクトリ
├── regular/           # ARC（AtCoder Regular Contest）用のディレクトリ
├── grand/            # AGC（AtCoder Grand Contest）用のディレクトリ
└── heuristic/        # AHC（AtCoder Heuristic Contest）用のディレクトリ

# 各カテゴリのディレクトリ構造（例：beginner/321/）
beginner/321/
├── Cargo.toml      # コンテストごとの依存関係設定
└── src/           # ソースコードディレクトリ
    ├── a.rs      # 問題A
    ├── b.rs      # 問題B
    └── ...       # 他の問題
```

## セットアップ

1. 必要なツール

   - Rust
   - VSCode
   - VSCode 拡張機能:
     - rust-analyzer

## 使い方

### 新しいコンテストの作成

```bash
./new_contest.sh

# 実行すると、以下の順で入力を求められます：

# 1. コンテストカテゴリの選択
# 1) beginner (ABC)
# 2) regular (ARC)
# 3) grand (AGC)
# 4) heuristic (AHC)
# Select contest category:

# 2. コンテスト番号の入力
# Enter contest number (e.g., 321):
```

これにより以下が作成されます：

- コンテストディレクトリ（例：`beginner/321/`）
- `Cargo.toml`
- `src`ディレクトリと問題ファイル（a.rs ～ h.rs, ex.rs）

### 問題を解く

1. 該当する問題のファイルを VSCode で開く

   - 例：`beginner/321/src/a.rs`

2. コードを書く

   - テンプレートには基本的な入力処理が含まれています
   - rust-analyzer による補完や型チェックが利用できます
