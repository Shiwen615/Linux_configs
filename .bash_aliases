alias cat='bat --paging=never'
alias tmux='tmux -2'
alias vi='nvim'

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

export PATH="$PATH:~/.local/bin/"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f -H -E .git/'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
