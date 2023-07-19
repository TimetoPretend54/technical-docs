# SETTINGS
source ~/Repos/znap/znap.zsh                                                # https://github.com/marlonrichert/zsh-snap
source ~/.bash_profile                                                      # SOMETIMES SOURCED BY DEFAULT? CHECK OS AND TEST IF NEEDED (Try to use an alias cmd)
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh   # https://github.com/zsh-users/zsh-autosuggestions (https://formulae.brew.sh/formula/zsh-autosuggestions)
source ~/kube-ps1.sh                                                        # https://github.com/jonmosco/kube-ps1
source ~/git-prompt.sh                                                      # https://github.com/lyze/posh-git-sh
# znap source marlonrichert/zsh-autocomplete                                # https://github.com/marlonrichert/zsh-autocomplete

# CONFIGURE DOCKER-MACHINE (REMINDER, RUN `dockerstart` at least ONCE in a zsh shell instance!)
eval "$(docker-machine env default)"

# PROMPT
NEWLINE=$'\n'
setopt PROMPT_SUBST
PROMPT='%F{green}%n%f %F{blue}%~%f $(__posh_git_echo " (%s)")$(kube_ps1 " (%s)")${NEWLINE}%F{cyan}$%f '

# ZSH Autosuggestions Settings (https://github.com/junegunn/fzf)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://cloud.google.com/sdk/docs/install -> Will add additional lines for GCP CLI

# Load Angular CLI autocompletion
source <(ng completion script)
