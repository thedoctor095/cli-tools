#!/usr/bin/env bash
set -e

for script in "$(dirname "$0")"/scripts/*.py; do
  new_script="$(basename "$script" .py)"
  script_path=$"/usr/local/bin/"$new_script""
  if [ ! -e "$script_path" ]; then
    sudo cp "$script" "$script_path"
  else
    echo "$new_script already present, skipping" 
  fi
done
