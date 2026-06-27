#!/usr/bin/env bash
set -euo pipefail

dotfiles_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
config_file="$config_home/chezmoi/chezmoi.toml"

install_chezmoi() {
  if command -v chezmoi >/dev/null 2>&1; then
    return
  fi

  case "$(uname -s)" in
    Darwin)
      if command -v brew >/dev/null 2>&1; then
        brew install chezmoi
      else
        printf 'chezmoi is not installed and Homebrew was not found.\n' >&2
        printf 'Install Homebrew or chezmoi manually, then rerun this script.\n' >&2
        exit 1
      fi
      ;;
    Linux)
      if command -v apt-get >/dev/null 2>&1; then
        sudo apt-get update
        sudo apt-get install -y chezmoi
      elif command -v dnf >/dev/null 2>&1; then
        sudo dnf install -y chezmoi
      elif command -v pacman >/dev/null 2>&1; then
        sudo pacman -S --needed chezmoi
      elif command -v brew >/dev/null 2>&1; then
        brew install chezmoi
      else
        printf 'chezmoi is not installed and no supported package manager was found.\n' >&2
        printf 'Install chezmoi manually, then rerun this script.\n' >&2
        exit 1
      fi
      ;;
    *)
      printf 'Unsupported OS: %s\n' "$(uname -s)" >&2
      exit 1
      ;;
  esac
}

install_chezmoi

if [ ! -f "$config_file" ]; then
  mkdir -p "$(dirname "$config_file")"
  printf 'sourceDir = "%s"\n' "$dotfiles_dir" > "$config_file"
elif ! grep -Eq '^[[:space:]]*sourceDir[[:space:]]*=' "$config_file"; then
  printf 'Existing chezmoi config found without sourceDir: %s\n' "$config_file" >&2
  printf 'Previewing with --source for this run. Add sourceDir manually if wanted.\n' >&2
fi

chezmoi --source "$dotfiles_dir" diff

printf '\nReview the diff above. Apply with:\n\n  chezmoi --source "%s" apply\n\n' "$dotfiles_dir"
