# ~/.config/zsh/.zshenv

# ----- XDG base directories -----
# Centralizes config/cache/data locations
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ----- Editor -----
# Default edtor used by git, contrab, etc.
export EDITOR="nvim"
export VISUAL="nvim"

# ----- GPG -----
export GPG_TTY=$(tty)

# ----- PAGER -----
if command -v bat >/dev/null 2>&1; then
    export MANPAGER="bat -l man -p"
elif command -v batcat >/dev/null 2>&1; then
    export MANPAGER="batcat -l man -p"
fi

# ----- Starship -----
export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"

# ----- PATH -----
#Personal binaries/scripts
export PATH="$HOME/.local/bin:$PATH"

# Opencode
export PATH="$HOME/.opencode/bin:$PATH"

# pnpm
export PATH="$HOME/.local/share/pnpm/bin:$PATH"

# Rust/Rustup
source $HOME/.cargo/env

# Spicetify
export PATH=$PATH:~/.spicetify
