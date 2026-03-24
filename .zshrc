# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# Disabled warning
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Aliases
alias rat='/usr/bin/cat'
alias cat='bat'
alias ls='lsd'
alias firmware-setup='systemctl reboot --firmware-setup'
alias cd='z'
alias qFlipper='QT_QPA_PLATFORM=xcb qFlipper'
alias moebius='moebius --no-sandbox'

# Highlighting
source /home/lenart/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

# Fix some programs by setting the locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Fix keybinds
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Startup 'screen'
python "/home/lenart/Desktop/Storage/Python/Konsole Start/startup.py"

# After init
function after_init() {
    if [[ -z "$AFTER_INIT_SKIP" ]]; then
        export AFTER_INIT_SKIP=1
        return
    fi

    # Commands
    # Terminal width for startup 'screen' 
    echo "$(tput cols)" > "/home/lenart/Desktop/Storage/Python/Konsole Start/width.txt"
}

precmd_functions+=(after_init)

# Handle terminal resize events
function on_terminal_resize() {
    clear
    echo "$(tput cols)" > "/home/lenart/Desktop/Storage/Python/Konsole Start/width.txt"
    exec zsh
}

# Evals and exports

export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_HOME/build-tools/
export PATH=$PATH:$ANDROID_HOME/emulator/
export LIBVIRT_DEFAULT_URI="qemu:///system"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(zoxide init zsh)"
eval "$(interact init zsh)"

# Options

setopt interactive_comments
