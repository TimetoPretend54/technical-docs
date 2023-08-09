# Setup Notes:
- Import Bookmarks (Located at `Chrome Bookmarks`)
- Sign into GitHub/GitLab (Find/use credentials)
- Install Brew (https://brew.sh/)
- Install Sh/Zsh Profiles (follow `Sh_Zsh Profiles\README.md`)
- Install Terminal Themes (`Terminal Themes\README.md`)
- Install Git (follow `GitConfig\README.md`)
  - https://github.com/GitCredentialManager/git-credential-manager/blob/release/docs/install.md#macos
- Install VS Code (https://code.visualstudio.com/download)
  - NOTE: Chose the `Dark+` theme, has better golang syntax highlighting then default dark theme

- Other Development Apps to Install:
    - NodeJS (https://nodejs.org/en/download/, choose LTS vers)
    - Angular (https://angular.io/cli)
      - make sure to install the Angular CLI as well: `npm install -g @angular/cli` in main drive (`~`, aka `PC/Users/{username}`)
    - Golang (https://formulae.brew.sh/formula/go)
    - Postman (https://www.postman.com/downloads/)
        - remember to turn off SSL Certificate Validation
    - Docker (https://medium.com/crowdbotics/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3)
    - Kubernetes (https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/#install-with-homebrew-on-macos)
    - Helm (https://helm.sh/docs/intro/install/#from-homebrew-macos)
    - GCP SDK (https://cloud.google.com/sdk/docs/install#mac)
      - https://cloud.google.com/sdk/gcloud/reference/container/clusters/get-credentials
    - Azure Data Studio (https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio)

- VS Code Extensions (Enter name under `Extensions` Menu)
    - Angular Language Service
    - AWS Toolkit (if using AWS)
    - GitLens
    - Angular Snippets (Version 16)
    - Bridge to Kubernetes
    - Character Count
    - Code Spell Checker
    - CloudFormation (aws-scripting-guy)
    - Color Highlight (Sergii N)
    - Dev Containers (Microsoft)
    - Diff Folders
    - Docker (Microsoft)
    - Edit CSV (janisdd)
    - ESLint (Microsoft)
    - Filter Line (by everettjf) - Use by opening `Ctrl+Shift+P` (type in `filter`)
        - A new file will appear with the filter out lines gone ({filename}.{extension}.filterline.log)
        - Remembers search patterns you have used before (helpful for searching for LogEvent Levels, ex: Filter by input string, search pattern" [WRN])
    - GitBlame
    - Git Graph
    - Go (Go Team at Google)
    - Go Autotest
    - Go Test Explorer
    - Helm Intellisense
    - HTML Preview
    - Intellisense for CSS class names in HTML (Zignd)
    - Karma Test Explorer (for Angular, Jasmine, and Mocha) - Lucas Ononiwu
    - Kubernetes (microsoft)
    - Live Share
        - Add `C:\Users\{Username}\AppData\Local\Temp\vsliveshare` to `Manage Workspace Trust Folder(s)`
            - You may need to create the `vsliveshare` folder under `Temp` if it doesn't already exist
            - `F1 -> Workspaces: Manage Workspace Trust`
    - Makefile Tools (microsoft)
    - Markdown All in One
    - Markdown PDF
        - Right Click Markdown File -> Select `Export (pdf)`
        - Created in path relative to Markdown File in folder title `MarkdownPDFOutput`
        - NOTE: if on VPN/Proxy, may have issues running command
          - For now, this temporary sollution will work: https://github.com/yzane/vscode-markdown-pdf/issues/189#issuecomment-625064634
    - Markdown Preview Mermaid Support
    - Mermaid Markdown Syntax Highlighting
    - Open API (Swagger) Editor
    - Partial Diff
    - PHP Intelephense
    - PHP Debug
    - Plant UML
    - PostgreSQL
    - Prettier - Code Formatter
        - Enable Format on Save:
            1. File -> Preferences -> Settings
            2. Search for `formatOnSave` and check the box
            3. On `Editor:Default Formatter` (select `Prettier for HTML, select `Typescript and Javascript Language Features` for Typescript, or if you want prettier, which `may` mess formatting up: `esbenp.prettier-vscode`)
    - Prettier ESLint (Rebecca Vest)
    - REST Client
        - See `VS Code\RESTClientTest` for an example of how to use into
        - Basically when using .http project file, each project folder should have a relative settings.json (ex: {projectName\.vscode\settings.json})
            - Make sure to load the entire project into VS Code, or the .http file wont read in the variables from the relative settings.json
    - Snowflake (snowflake.com)
    - SVG (jock)
    - Swagger Viewer (Arjun G)
    - Test Explorer UI (Holger Benl)
    - Todo+ (Fabio Spampinato)
    - vscode-reveal (evilz)
    - YAML (redhat)
    - YAML Sort (Pascal Reitermann)
    - Zoom Bar (wraith13)

- MacOS Apps/App Store Apps
    - Downloads 
      - DisplayLink (For Dock Hub) -> First test if it works out of the box, or with the recent Software (https://www.synaptics.com/products/displaylink-graphics/downloads/macos)
        - TESTED ON Monterey (12.6.3), works w/ latest DisplayLink Install (DisplayLink Graphics Manager 1.8 works)
          - Once installed select DisplaLink (top right icon)
            - "Login screen extension status" -> Download and install
              - After completed installing, "Login screen extension status" will say "Installed"
            - "Automatic app startup" -> Toggle "Launch automatically after login"
            - "Display rotation and toggle" -> Select "90°"
        - If it does not work with recent DisplayLink software:
            - First Download "DisplayLink Manager Graphics Connectivity 1.4.pkg" and install
            - Second Download "DisplayLink USB Graphics Software for macOS 5.2.5.dmg"
      - MS Edge (https://www.microsoft.com/en-us/edge/download?form=MM145U)
      - Chrome (https://www.google.com/chrome/)
      - Firefox (https://www.mozilla.org/en-US/firefox/mac/)
      - Opera (https://www.opera.com/browsers/opera)
      - Inkscape (https://inkscape.org/release/1.2/mac-os-x/)
      - Logitech Camera Settings (https://support.logi.com/hc/en-za/articles/360024695174--Downloads-C920s-HD-Pro-Webcam -> Camera Settings)
      - Postman (https://www.postman.com/downloads/)
      - Python (https://www.python.org/downloads/macos/)
      - RDM (https://web.archive.org/web/20220824124725/https://avi.alkalay.net/software/RDM/ -> select RDM-2.2.pkg)
      - Rectangle (https://rectangleapp.com/)
      - Refi (GCP Firestore GUI App, not really needed, if wanted select "dmg" Version - https://refi-updater.vercel.app/)
      - XCode (See `Sh_Zsh Profiles\README.md` for more info)
    - App Store (NOTE: Will need apple ID for app store, if org, use org email to sign up for apple id)
      - MuteKey (Dave Cheng)
      - GIPHY Capture. The GIF Maker (Not really needed, can use "QuickTime Player" -> Right Click -> New Screen Recording)
        - For QuickTime Player Screen Recording, Go to Options -> Save To -> Other Location... -> Pictures/Screenshots (Make sure to do this each time, or clipboard pictures won't save to screenshots anymore)
      - Clocker (Abhishek Banthia)
      - Mini Calendar Widget (Handy monthly popup calendar) -> Open -> Preferences -> Un-select "Dock Icon", then in Remove from Dock ("Find Icon, "Remove from Dock")
    - Pages (MS Office Equiv)
    - Numbers (MS Excel)
    - Keynote (Powerpoint)

- Adding HP Printers to Mac
    - Note: if on a VPN, "may" need to disconnect before attempting to add/use printer
    1. Refer to https://support.hp.com/us-en/document/ish_2635044-2489772-16 -> "If printing software is not found from 123.hp.com, use an alternative method"
    2. Refer to alternative method "Apple Support" (May not need to do this on new MacOS Versions)
       1. Open links for MacOS Driver:
          - https://support.apple.com/kb/DL1888?locale=en_US
          - https://support.apple.com/kb/DL907?locale=en_US
       2. Download and Install (suggest to just download both and attempt to install, one of them should work, the other won't due to OS Version)
    3. From Apple App Store Find "HP Smart for Desktop" and Download (Don't Open Yet)
    4. Now Go to Settings -> Printers & Scanners
       1. Click "+" Icon -> Select "IP" Tab
          1. In Address enter IP Address of Printer
          2. Under "Use", select "Select Software..."
          3. Search for your Printer Software (ex: HP Envy -> search "Envy" -> Recommend Driver: "HP ENVY 5640 series"), select "OK"
          4. Click "Add"
       2. Make sure to rename Device from IP Address to actual Printer Name (Under Printers & Scanners -> Right Click -> Rename Printer)
    5. Now Open "HP Smart for Desktop", select "Add new printer"
       1. Should see newly added printer name and follow HP Smart Desktop Steps from there to add.
    6. Print Test Document
       1. Find Printer in "HP Smart for Desktop" App, select "Printer Settings"
       2. Select "Printer Reports" -> Printer Status Report -> Print
