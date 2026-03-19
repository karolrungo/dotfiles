#!/usr/bin/env zsh
set -e  # exit immediately if any command fails

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
OS="$(uname)"
DRY_RUN=false

usage() {
  cat <<EOF
Usage: ./install.sh [options]

Options:
  -n, --dry-run   Simulate stow without making any changes
  -h, --help      Show this help message
EOF
}

for arg in "$@"; do
  case "$arg" in
    -n|--dry-run) DRY_RUN=true ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $arg"; usage; exit 1 ;;
  esac
done

STOW_FLAGS="-d $DOTFILES/config -t ~"
[[ "$DRY_RUN" == true ]] && STOW_FLAGS="$STOW_FLAGS -n -v" && echo "[dry run]"

echo "Stowing common configs..."
eval stow $STOW_FLAGS common

if [[ "$OS" == "Linux" ]]; then
  echo "Stowing Linux-specific configs..."
  eval stow $STOW_FLAGS linux
fi

echo "Done."
