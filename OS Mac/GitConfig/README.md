# Steps to Install
1. Download Git: https://git-scm.com/download/mac (Install Homebrew first, also Install `git-gui`, aka `gitk`)
    - You'll want to increase Gitk's font sizes (default is 9, I recommend 12, `Gitk/Wish -> Preferences -> Fonts`)
2. Install VS Code: https://code.visualstudio.com/download
3. Paste .gitconfig into `~` (`/Users/{desiredUser}`)
    - If editor doesn't work, Follow: https://stackoverflow.com/questions/34746045/set-visual-studio-code-to-be-global-git-editor-on-osx/53602330#53602330

## GitConfig Info (OPTIONAL)
Info:
  - To see global `git config --global -e`
  - To see system `git config --system -e` 
      - If you have a work computer that auto sets the global .gitconfig, are having issues/network problems, copy the gitconfig to `~\usr\local\etc`, remove the `git.` from the `git.gitconfig`, making it now `gitconfig`
  - To see other git config info, type `git config` in Powershell

### (OPTIONAL) Git Auth Issue
GIT Auth Issue: https://snede.net/git-does-not-remember-username-password/
1. git config --global credential.helper manager
2. git config --system credential.helper manager

### (OPTIONAL) Code For git newRepo
Add the following to .gitconfig (type `git config --global -e` in powershell):
```
[user]
	email = some.email@gmail.com
[alias]
    newRepo = "!f(){ \
            git clone https://https://github.com/{orgName}/$1; \
            cd $1; \
            git remote set-url origin https://github.com/{orgName}/$1; \
            git remote set-url --push origin https://github.com/{userId-orgName}/$1; \
            git remote -v; \
        }; f"
```

Type `git newRepo {repoName}` in powershell for it to work

**NOTE**: Forking is essentially useless for developing on personal own account repositories, either need to set this up for an origanization, or for individual repositories (which also seems odd), likely only use forking if working for company/organization machine.

**NOTE**: If having issues w/ global .gitconfig (like mentioned above due to company auto setting global .gitconfig on network), then instead of adding code bit via `git config --global -e`, use `git config --system -e` (add it to system level gitconfig essentially)
