#!/bin/bash

# カテゴリの選択
PS3="Select contest category: "
options=(
    "beginner (ABC)" 
    "regular (ARC)" 
    "grand (AGC)"
    "heuristic (AHC)"
)
select category in "${options[@]}"; do
    case $category in
        "beginner (ABC)")
            CATEGORY="beginner"
            PREFIX="ABC"
            break
            ;;
        "regular (ARC)")
            CATEGORY="regular"
            PREFIX="ARC"
            break
            ;;
        "grand (AGC)")
            CATEGORY="grand"
            PREFIX="AGC"
            break
            ;;
        "heuristic (AHC)")
            CATEGORY="heuristic"
            PREFIX="AHC"
            break
            ;;
        *) 
            echo "Invalid option. Please try again."
            ;;
    esac
done

# コンテスト番号の入力
read -p "Enter contest number (e.g., 321): " CONTEST

if [[ ! $CONTEST =~ ^[0-9]+$ ]]; then
    echo "Error: Contest number must be a number"
    exit 1
fi

# 50単位のグループディレクトリを計算
GROUP_START=$(( (($CONTEST-1)/50)*50 + 1 ))
GROUP_END=$(( $GROUP_START + 49 ))
GROUP_DIR="${GROUP_START}-${GROUP_END}"
CONTEST_DIR="$CATEGORY/$GROUP_DIR/$CONTEST"

# Create contest directory
mkdir -p "$CONTEST_DIR"

# Create Cargo.toml
cat > "$CONTEST_DIR/Cargo.toml" << EOF
[package]
name = "contest_${CONTEST}"
version = "0.1.0"
edition = "2021"

[dependencies]
proconio = "0.4.5"

[[bin]]
name = "a"
path = "src/a.rs"

[[bin]]
name = "b"
path = "src/b.rs"

[[bin]]
name = "c"
path = "src/c.rs"

[[bin]]
name = "d"
path = "src/d.rs"

[[bin]]
name = "e"
path = "src/e.rs"

[[bin]]
name = "f"
path = "src/f.rs"

[[bin]]
name = "g"
path = "src/g.rs"

[[bin]]
name = "h"
path = "src/h.rs"

[[bin]]
name = "ex"
path = "src/ex.rs"
EOF

# Create src directory
mkdir -p "$CONTEST_DIR/src"

# Copy template for each problem
for problem in a b c d e f g h ex; do
    cp template.rs "$CONTEST_DIR/src/$problem.rs"
done

echo "Contest ${PREFIX}${CONTEST} directory has been created in $CONTEST_DIR!"