# nvim

Neovim config, ThePrimeagen-style, on Neovim 0.12.

## Requires

- Neovim >= 0.12
- ripgrep, fd, fzf, tree-sitter CLI
- a Nerd Font (optional)

```bash
brew install neovim ripgrep fd fzf tree-sitter
```

## Install

```bash
git clone <this-repo> ~/.config/nvim
nvim
```

Plugins install on first launch via lazy.nvim. Language servers via `:Mason`.

## Layout

- `lua/me/set.lua` — options
- `lua/me/remap.lua` — keymaps
- `lua/me/lazy/` — one file per plugin, auto-imported

Leader is space. See the cheatsheet for keybinds.
