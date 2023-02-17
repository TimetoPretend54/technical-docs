## Setup Notes:
NOTE: THIS MAY BE OVERWRITTEN/OUT OF DATE BASED ON LATST STEAMOS RELEASE (Tested as of `SteamOS 3.4.4`)
- May need to redo these steps when a new release version comes out (so keep these files up to date in Cloud Drive!)

### Bash Profile
- For Bash Profile, can use the [MacOS Bash Profile](/../../OS%20Mac/Sh%20_%20Zsh%20Profiles/)
- WARNING: Check Private Cloud Drive for SteamOS configs for ~/.bashrc and ~/.bash_profile, cannot upload them since there are licenses involved w/ the files (Vavle/Steam license on file)
    - Can find them on the Cloud Drive for copy/paste into ~/

### VS Code
- Install Visual Studio Code via Discover
- Set VS Code PATH:
    ```
    PATH="$PATH:~/var/lib/flatpak/exports/bin
    ``` 
- Set alias in bashrc (DO NOT NEED TO DO THIS IF COPIED BASHRC FILE from Cloud Drive Bash Profile Configs):
    ```
    echo 'alias code="com.visualstudio.code"' >> ~/.bashrc
    ```

### Git
- Git should already be added (at least based on latest release)
- Just need to update the .gitconfig file (which is located in the same private Cloud Drive for the SteamOS configs for ~/.bashrc and ~/.bash_profile)
- Update Git Editor: 
    ``` 
    git config --global core.editor "/var/lib/flatpak/exports/bin/com.visualstudio.code --wait"
    ```

#### SSH
- Setup [GitHub using SSH Credentials](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-ssh-urls) (Could also use VS Code's Git Integration)
    - https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
    - Location ex: `~/.ssh/github`, add passphrase (save somewhere securly)
        - **NOTE:** If you use a different key name than the default, also need to [set an ssh config](https://stackoverflow.com/questions/4565700/how-to-specify-the-private-ssh-key-to-use-when-executing-shell-command-on-git/11251797#11251797)
        - `~/.ssh/config`:
            ```
            Host github.com
                HostName github.com
                IdentityFile ~/.ssh/github
                IdentitiesOnly yes
            ```
            - Use the [following command](https://stackoverflow.com/questions/2643502/git-how-to-solve-permission-denied-publickey-error-when-using-git/8610435#8610435) to test:
                ```
                ssh -vT git@github.com
                ```
    - **REMINDER:** Check "git remote -v", if used https to clone initially, need to update origin to ssh (Fetch SSL_URL from same "Clone" Button on repo, find "SSH" Tab)
        ```
        git remote set-url origin {SSH_URL}
        ```
        - ex: 
            ```
            git remote set origin git@github.com:user/repo.git
            ```
