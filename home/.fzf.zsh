# Setup fzf
# ---------
FZF_PREFIX=$(brew --prefix fzf)
if [[ ! "$PATH" == *$FZF_PREFIX/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$FZF_PREFIX/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$FZF_PREFIX/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$FZF_PREFIX/shell/key-bindings.zsh"
