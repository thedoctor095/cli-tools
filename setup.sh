#!/usr/bin/env bash
set -e

source "$(dirname "$0")"/common.sh;

check_rust_install

installed=()
for script in "$(dirname "$0")"/tools/*.sh; do
  source "$script"
  if ! is_installed "$CMD"; then
    echo "Installing $CMD"
    run_install
    installed+=("$CMD")
  else
    echo "$CMD already installed"
  fi
  unset -f run_install
  unset CMD
done

if [ ${#installed[@]} -ne 0 ]; then
  echo "Installation process finished, CLI tools installed: ${installed[@]}"
fi