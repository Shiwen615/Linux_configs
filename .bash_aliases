alias cat='bat --paging=never'
alias tmux='tmux -2'
alias vi='nvim'
alias ls='exa --color=always -F'
alias la='ls -a'
alias ll='ls -alh --git --icons'
alias l='ls'
alias tree='ls -T --icons'

# mouse key speed
xkbset ma 60 5 100 7 3

# cd without typing cd
shopt -s autocd
# allows multiple terminal sessions to write to the history at the same time
shopt -s histappend
# ls or rm without come file
shopt -s extglob

# cd up to n dirs
# using:  cd.. 10   cd.. dir
function cd_up() {
  case $1 in
    *[!0-9]*)                                          # if no a number
      cd $( pwd | sed -r "s|(.*/$1[^/]*/).*|\1|" )     # search dir_name in current path, if found - cd to it
      ;;                                               # if not found - not cd
    *)
      cd $(printf "%0.0s../" $(seq 1 $1));             # cd ../../../../  (N dirs)
    ;;
  esac
}
alias 'cd..'='cd_up'                                # can not name function 'cd..'
export DISPLAY

export PATH="$PATH:~/.local/bin/"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f -H -E .git/'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
