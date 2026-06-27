# Dotfiles

My personal dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

The setup is meant to work on macOS and Linux. It keeps machine-specific paths out of the shared files and leaves secrets to tools like fd0 or 1Password.

## Install

```bash
git clone https://github.com/ValentinKolb/dotfiles.git ~/.local/share/chezmoi
~/.local/share/chezmoi/install.sh
```

If the repo already exists somewhere else:

```bash
cd ~/Git/dotfiles
./install.sh
```

The install script installs chezmoi if needed and shows the diff. It does not apply changes automatically.

## Daily Use

```bash
chezmoi diff
chezmoi apply
```

## What's Included

- Bash login and interactive shell setup
- Starship prompt
- Ghostty config
- macOS/Linux differences handled through chezmoi templates
