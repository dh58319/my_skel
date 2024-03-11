apt-get -y update; apt-get -y upgrade;

apt-get -y install ssh sshfs openssh-server sudo git tree zsh tmux zip rsync systemd vim wget curl tzdata autojump language-pack-en miller fd-find bat imagemagick ranger
# apt-get -y install build-essential ffmpeg libsm6 libxext6 libudev-dev libncurses* texlive-full
apt-get clean autoclean; apt-get -y autoremove --purge

pip install --upgrade transformers timm wandb einops tmuxp nvitop lightning torchmetrics ujson hydra-core captum seaborn deepspeed

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh) $USER

cd tmp
git clone https://github.com/dh58319/my_skel.git

# make fd-find and bat aliases
ln -s $(which fdfind) ~/.local/bin/fd
ln -s $(which batcat) ~/.local/bin/bat

echo Todo
echo '1. Modify sshd_config\n 2. Make "/data" folder\n 3. Add .alias in your zshrc'

# docker commit <container_id> <image_name>:latest
# docker push <image_name>:latest
# docker rm -f <container_id>


# docker run -it --gpus all --shm-size=8g --name <container_name> -v /data:/data <image_name>:latest
# docker exec -it <container_name> /bin/zsh


