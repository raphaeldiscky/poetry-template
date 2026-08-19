#!/bin/bash

poetry sync
pnpm install

# install lefthook (git hooks manager) if missing — pinned via @vX.Y.Z
if ! command -v lefthook >/dev/null 2>&1; then
  if command -v go >/dev/null 2>&1; then
    go install github.com/evilmartians/lefthook/v2@v2.1.10
  else
    echo "go not found on PATH; skipping lefthook install (git hooks will NOT be wired)"
  fi
fi

# wire git hooks via lefthook (config lives in lefthook.yml)
if command -v lefthook >/dev/null 2>&1; then
  lefthook install
fi