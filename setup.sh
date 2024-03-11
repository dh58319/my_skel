apt-get -y update; apt-get -y upgrade;

apt-get -y install ssh sshfs openssh-server sudo git tree zsh tmux zip rsync systemd vim wget curl tzdata autojump language-pack-en miller fd-find bat

apt-get clean autoclean; apt-get -y autoremove --purge

pip install --upgrade transformers timm wandb einops tmuxp nvitop lightning torchmetrics ujson hydra-core captum seaborn deepspeed

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh) $USER

# make fd-find and bat aliases
ln -s $(which fdfind) ~/.local/bin/fd
ln -s $(which batcat) ~/.local/bin/bat

echo Todo
echo '1. Modify sshd_config\n 2. Make "/data" folder\n 3. Add .alias in your zshrc'
