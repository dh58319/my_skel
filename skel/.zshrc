export ZSH="$HOME/.oh-my-zsh"
export CUDA_DEVICE_ORDER=PCI_BUS_ID
export LC_CTYPE="en_US.UTF-8"

ZSH_THEME="agnoster"

# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

plugins=(git zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

prompt_context() { 
  # Custom (Random emoji) 
  emojis=("😎" "🦄" "🌈" "🍻" "🚀" "💡" "🎉" "🔑" "🚦" "🌙")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1)) 
  prompt_segment black default "Donghyun_Docker ${emojis[$RAND_EMOJI_N]} " 
}
