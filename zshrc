autoload -Uz vcs_info
precmd() {
    vcs_info
}
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%f'
setopt prompt_subst
PROMPT='%B%F{blue}%1~ ${vcs_info_msg_0_}%b%F{white} $ '

# Source .zshenv
if [ -f ~/.zshenv ]; then
    source ~/.zshenv
fi

# alias
alias ll="ls -al"
alias python="/usr/bin/python3"	# python
alias pip="/usr/bin/pip3"	# pip

# alias - git
alias gi="git init"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gh="git push origin HEAD"
alias gl="git log"
alias gb="git branch"
alias gch="git checkout"
alias gp="git pull"
alias gf="git fetch"
alias gr="git remote"

# Python
export PATH="/Users/onkar/Library/Python/3.9/bin:$PATH"

# Node 
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

# Android
export ANDROID_HOME="/Users/onkar/Library/Android/sdk"
export PATH="/Users/onkar/Library/Android/sdk/platform-tools:${PATH}"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_351.jdk/Contents/Home"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Create Data Science Project Repository
alias dataproject="bash ~/bin/create_data_science_project_repo_script.sh"


# Golang
export GOPATH=$HOME/go
export GOROOT="/opt/homebrew/opt/go@1.21/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
# export PATH="/opt/homebrew/opt/go@1.20/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
