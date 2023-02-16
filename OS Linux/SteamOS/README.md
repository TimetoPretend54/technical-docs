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
