#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
CONFIG="$REPO_ROOT/configs/devnet.toml"

echo "Building kessari-node..."
cargo build --manifest-path "$REPO_ROOT/Cargo.toml"

echo "Starting devnet node with config: $CONFIG"
"$REPO_ROOT/target/debug/kessari-node"
