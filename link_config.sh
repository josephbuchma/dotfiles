
DOTFILES=$HOME/.config/dotfiles
CONFDIR=$HOME/.config

# LINK TMUX CONFIG
mkdir -p $CONFDIR/i3
rm -f $CONFDIR/i3/config > /dev/null 2>&1
ln -sfn $DOTFILES/i3wmconf/config $CONFDIR/i3/config

# LINK TMUX CONFIG
rm $HOME/.tmux.conf > /dev/null 2>&1
ln -sfn $DOTFILES/tmuxconf/tmux.conf $HOME/.tmux.conf
