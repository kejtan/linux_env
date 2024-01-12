#!/bin/bash

SCRIPT_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
ln -s $SCRIPT_PATH/.vimrc $HOME/.vimrc
ln -s $SCRIPT_PATH/.tmux.conf $HOME/.tmux.conf 
if [ -f $HOEM/.config/nvim/init.vim ]; then
mkdir $HOME/.config/nvim 2>/dev/null
cat > $HOME/.config/nvim/init.vim <<EOF
source ~/.vimrc
EOF
fi
