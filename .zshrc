# Kiro CLI (pre)
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# PATH
export PATH="$PUB_CACHE/bin:$PATH"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Node.js
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Java
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export PATH=$JAVA_HOME/bin:$PATH
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Flutter
export PUB_CACHE="/Users/chihiro/tools/flutter/.pub-cache"
[[ -f /Users/chihiro/.dart-cli-completion/zsh-config.zsh ]] && . /Users/chihiro/.dart-cli-completion/zsh-config.zsh || true

# Claude Code
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=64000

# Secrets
source ~/.zshrc.secrets

# Kiro CLI (post)
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

# Starship
eval "$(starship init zsh)"
