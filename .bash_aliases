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
# export FZF_DEFAULT_COMMAND="fd --exclude={.git} --type f --strip-cwd-prefix"
export FZF_DEFAULT_COMMAND="fd -H -E .git --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# terminal show startup informations with random
Distros=('openbsd' 'mac' 'debiangentoo' 'crux' 'ubuntu_old'\
	'ubuntu-GNO' 'mint' 'windows')
distros_size=${#Distros[@]}
distro_index=$(($RANDOM % $distros_size))
neofetch --ascii_distro ${Distros[$distro_index]}
# screenfetch
