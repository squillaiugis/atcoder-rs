FROM rust:latest

# 基本的なツールのインストール
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    build-essential \
    lldb \
    && rm -rf /var/lib/apt/lists/*

# Rust関連ツールのインストール
RUN rustup component add rustfmt clippy rust-src

# 作業ディレクトリの設定
WORKDIR /workspace

# デフォルトのシェルをbashに設定
SHELL ["/bin/bash", "-c"] 