# Steps to Install
1. Copy All Files within Folder
2. Paste files into `~` (`/Users/{desiredUser}`)

**NOTES:** 
1. Install `XCode` (see https://xcodereleases.com/, if MacOS is too outdated to download straight from Apple Store)
    - Make sure Xcode.app is in the Applications folder.
2. Follow this guide to set xcode correctly: https://github.com/nodejs/node-gyp/issues/569
Essentially do this: 
- 
    ```
    sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
    ```
3. Install `fzf` (including `key bindings and fuzzy completion`):
-  
   ```
   brew install fzf

   # To install useful key bindings and fuzzy completion:
   $(brew --prefix)/opt/fzf/install
   ```
   - Refer to adding to `bash.rc` and `.zshrc`: https://github.com/junegunn/fzf/issues/1304#issuecomment-394087351
     - This is already in the `.bashrc` and `.zshrc` files provided in this directory
   - See https://github.com/junegunn/fzf/issues/1304#issuecomment-588595980 for more info
4. Download [git-prompt.sh](https://github.com/lyze/posh-git-sh/blob/master/git-prompt.sh)
  - Place in `~/git-prompt.sh`
  - NOTE: Can locally (off my machine) if git-prompt.sh if needed, but cannot distribute src code due to license conflicts
5. Download/Install all other sources from `.bash_profile` and `.zshrc` (ex: kube-ps1.sh)
  - Just check each file, each source links to the associated GitHub Repo, which should have instructions how to add/install
