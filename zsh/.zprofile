# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh"
eval "$(/opt/homebrew/bin/brew shellenv)"

# >>> coursier install directory >>>
export PATH="$PATH:/Users/sj/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

# >>> JVM installed by coursier >>>
export JAVA_HOME="/Users/sj/Library/Caches/Coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.24%252B8/OpenJDK11U-jdk_x64_mac_hotspot_11.0.24_8.tar.gz/jdk-11.0.24+8/Contents/Home"
# <<< JVM installed by coursier <<<


# Added by Toolbox App
export PATH="$PATH:/Users/sj/Library/Application Support/JetBrains/Toolbox/scripts"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh"

# Added by `rbenv init` on Mon Oct 14 11:03:41 PDT 2024
eval "$(rbenv init - --no-rehash zsh)"
