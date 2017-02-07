# Setup fzf
# ---------
FZF_ROOT=$(brew --prefix fzf)

if [[ ! "$PATH" == *$FZF_ROOT/bin* ]]; then
  export PATH="$PATH:$FZF_ROOT/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == *$FZF_ROOT/man* && -d "$FZF_ROOT/man" ]]; then
  export MANPATH="$MANPATH:$FZF_ROOT/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$FZF_ROOT/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "$FZF_ROOT/shell/key-bindings.bash"

