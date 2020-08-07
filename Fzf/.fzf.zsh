# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ricardo/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ricardo/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ricardo/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ricardo/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

