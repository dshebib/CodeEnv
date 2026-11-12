# CodeEnv
Settings for my coding environment, laid out as GNU stow packages.

## Install
```sh
sudo apt install stow fzf
cd ~/CodeEnv
stow shell zsh bash git vim ghostty
```
`.stowrc` sets `--target=~` and `--no-folding`, so every file is symlinked individually into `~`.
Remove the links with `stow -D <package>`; preview with `stow -n -v <package>`.

| Package | Files |
|---|---|
| `shell` | `.profile` (environment, read at desktop login), `.aliases` (shared by zsh and bash) |
| `zsh` | `.zprofile`, `.zshrc`, `.zsh_plugins.txt` (antidote) |
| `bash` | `.bashrc` |
| `git` | `.gitconfig`, `.config/git/ignore` |
| `vim` | `.vimrc`, `.vim/autoload/plug.vim` |
| `ghostty` | `.config/ghostty/config.ghostty` |

After stowing the `zsh` package, rebuild the antidote bundle:
```sh
zsh -c 'source ~/.antidote/antidote.zsh && antidote bundle <~/.zsh_plugins.txt >|~/.zsh_plugins.zsh'
```
Log out and back in so the session picks up the new `.profile`.

## Never stowed
- `tmux/` — `.tmux.conf`
- `windows/` — Windows Terminal, VS Code and WSL settings; copy them by hand on Windows.

## Ghostty theme
The theme is machine-specific and lives in the untracked `~/.config/ghostty/local.ghostty`, which `config.ghostty` includes through `config-file = ?local.ghostty`:
```
theme = dark:Zenburned,light:Monokai Pro Light Sun
```
