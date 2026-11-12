# ~/.profile: environment only. Read once per desktop login by lightdm-session
# (/bin/sh) and by zsh login shells through ~/.zprofile. Aliases live in ~/.aliases.

path_prepend() {
    [ -d "$1" ] || return 0
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1${PATH:+:$PATH}" ;;
    esac
}

path_append() {
    [ -d "$1" ] || return 0
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="${PATH:+$PATH:}$1" ;;
    esac
}

export BUN_INSTALL="$HOME/.bun"
export PNPM_HOME="$HOME/.local/share/pnpm"

path_append /usr/local/go/bin
path_append "$HOME/.local/share/soar/bin"

path_prepend "$HOME/go/bin"
path_prepend "$HOME/.cargo/bin"
path_prepend "$HOME/.local/share/fnm"
path_prepend "${KREW_ROOT:-$HOME/.krew}/bin"
path_prepend "$BUN_INSTALL/bin"
path_prepend "$PNPM_HOME/bin"
path_prepend "$HOME/.local/bin"
path_prepend "$HOME/bin"
export PATH

unset -f path_prepend path_append

export EDITOR=vim
export VISUAL=vim

export KUBECONFIG="./kubeconfig${KUBECONFIG:+:$KUBECONFIG}"
export TALOSCONFIG="./talosconfig${TALOSCONFIG:+:$TALOSCONFIG}"

export CLAUDE_CODE_NO_FLICKER=1

if [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
