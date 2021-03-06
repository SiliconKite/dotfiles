# Setup fzf
# ---------
if [[ ! "$PATH" == */home/$USER/.fzf/bin* ]]; then
  export PATH="$PATH:/home/$USER/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/$USER/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/fzf/shell/key-bindings.zsh"
