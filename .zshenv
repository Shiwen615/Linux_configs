if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -f $HOME/.cargo/env ] ; then
	. $HOME/.cargo/env
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export EDITOR="/snap/bin/nvim"

# export PATH="/usr/local/cuda/bin:$PATH"
export PATH="/usr/local/cuda-12.9/bin:$PATH"
#
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ray/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ray/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ray/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ray/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# export LD_LIBRARY_PATH="/usr/local/cuda/lib64"
export LD_LIBRARY_PATH="/usr/local/cuda-12.9/lib64"
