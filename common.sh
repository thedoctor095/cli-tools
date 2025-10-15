check_rust_install() {
  if ! command -v cargo &> /dev/null; then
    echo "Cargo not installed, Rust's package manager is required before installing any Rust-based CLI tools.."
    exit 0
  else
    echo "Found $(cargo --version)"
  fi
}

is_installed() {
  local cmd=$1
  if command -v "$cmd" &> /dev/null; then
    return 0
  else
    return 1
  fi
}
