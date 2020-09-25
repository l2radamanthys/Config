# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ricardo/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ricardo/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ricardo/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/ricardo/.fzf/shell/key-bindings.bash"
