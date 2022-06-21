# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment

# neovim as manpager
export MANPAGER='nvim +Man!'
export MANWIDTH=999
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH


alias git-show-branches="git log --graph --all --format='%C(cyan) %p %Cred %h %C(white) %s %Cgreen(%cr)%C(cyan) <%an>%C(bold yellow)%d%Creset'"
alias l='exa --group-directories-first -l -T -L 1'
alias la='exa --group-directories-first -la -T -L 1'
alias ll='exa --group-directories-first -l -T -L 3'
alias lla='exa --group-directories-first -la -T -L 3'
alias vim='nvim'
alias :q='exit'
alias :Q='exit'
alias big='expac -s -H M "%m %n"|sort -rhk 1 | head -n 20'
. "$HOME/.cargo/env"
source /home/tenebrae/alacritty/extra/completions/alacritty.bash
