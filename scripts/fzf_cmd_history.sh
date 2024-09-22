history | fzf --tac | awk '{$1= ""; print $0}' | sh
