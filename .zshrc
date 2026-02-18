
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"



# Q pre block. Keep at the top of this file.
# 必要なパスを最初に設定
export PATH="$PUB_CACHE/bin:$PATH"

# その後、その他のパスを追加
export PATH="$PATH:/opt/homebrew/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

# Secrets (API keys etc.)
source ~/.zshrc.secrets

# Q post block. Keep at the bottom of this file.
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export PATH=$JAVA_HOME/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


## Claude Code
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=64000

export PUB_CACHE="/Users/chihiro/tools/flutter/.pub-cache"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/chihiro/.dart-cli-completion/zsh-config.zsh ]] && . /Users/chihiro/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="$HOME/.local/bin:$PATH"


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

# Starship
eval "$(starship init zsh)"
