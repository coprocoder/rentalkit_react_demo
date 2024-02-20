#!/usr/bin/env bash
set -x #echo on

readonly ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
readonly INVEST_LOCAL_DIR="/home/coprocoder/Projects/rentalkit"

declare -a arr=(
  "core"
)

for i in "${arr[@]}"; do
  source="${INVEST_LOCAL_DIR}/${i}"
  target="${ROOT_DIR}/node_modules/@rentalkit/${i}"
  [ -d "$target" ] && rm -r "$target"
  cp -r "$source" "$target"
done