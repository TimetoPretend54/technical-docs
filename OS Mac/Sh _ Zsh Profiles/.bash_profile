# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="/opt/homebrew/bin:$PATH";
export BASH_SILENCE_DEPRECATION_WARNING=1;
export GOPRIVATE="{private_URL_Repo}"

# SETTINGS
source ~/.bash_prompt
# source ~/.aliases
# source ~/.functions
source ~/git-prompt.sh                              # https://github.com/lyze/posh-git-sh
source ~/kube-ps1.sh                                # https://github.com/jonmosco/kube-ps1

# PROMPT
export PROMPT_COMMAND='__posh_git_ps1 "\\[\[\e[0;32m\]\u \[\e[0;34m\]\w" " \[\e[1;36m\]$(kube_ps1)\n\$\[\e[0m\] ";'$PROMPT_COMMAND

# FUNCTIONS
## NAVIGATION
function openRepo() {
    local organizationProjectsDirectoryName="OrganizationName"                             ## ex: ~/Projects/OrganizationName/..
    local relativePath=`echo $PWD | awk -F"$organizationProjectsDirectoryName" '{print $2}'` ## ex: ~/Projects/OrganizationName/{relativePath}
    
    local organizationURLRepository="OrganizationURLRepo"   ## ex: https://gitlab.company.com, https://github.com
    local fullUrl="${organizationURLRepository}${relativePath}"
    open $fullUrl
}
function sshRemote() {
    cd ~/.ssh/RemoteHost
    ssh -i remotehost_rsa {username}@{remotehost_ip}
}
function dockerstart() {
    # https://medium.com/crowdbotics/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3
    docker-machine start
    docker-matchine env default
    eval "$(docker-machine env default)"            # WILL ONLY WORK FOR RUNNING SHELL INSTANCE, see.zshrc for running on every shell instance
}


# ALIASES
## NAVIGATION
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
## COMMON DIRECTORIES
alias projects="cd ~/Projects"
# alias {organizationNameProjects}="cd ~/Projects/{organizationName}"
# alias {organizationNameProjectNameProjects}="cd ~/Projects/{organizationName}/{organizationProject}"
alias downloads="cd ~/Downloads"
alias documents="cd ~/Documents"
alias home="cd ~"
## SHOW/HIDE HIDDEN FILES
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
## SHOW/HIDE DESKTOP ICONS
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
