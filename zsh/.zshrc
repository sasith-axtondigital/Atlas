# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd --shell zsh)"

# Add Java path
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Python3
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias python=python3
alias py=python3
alias pip=pip3
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

# Created by `pipx` on 2026-01-23 19:16:48
export PATH="$PATH:/Users/sasith/Library/Python/3.9/bin"

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST
PROMPT='%n@%m %~ ${vcs_info_msg_0_} %# '

# Starship cofig path
export STARSHIP_CONFIG="$HOME/.config/starship.toml"

eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Zoxide (better cd)
eval "$(zoxide init zsh)"

# FZF (fuzzy finder)
eval "$(fzf --zsh)"

# ripgrep ignor file
alias rg='rg --ignore-file=$HOME/dotfiles/rg/ignore'

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/sasith/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/sasith/.antigravity-ide/antigravity-ide/bin:$PATH"
export GEMINI_API_KEY="AIzaSyA_6L1s1f6Edk08qakvJzjLxg0Ehq6d6ig"


# Added by Antigravity CLI installer
export PATH="/Users/sasith/.local/bin:$PATH"
export GEMINI_API_KEY="AIzaSyDtulAtJv6VXmiyhXR5GK0gSswmg23i8eY"
alias bu='brew update && brew upgrade && brew cleanup'

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/sasith/.lmstudio/bin"
# End of LM Studio CLI section

