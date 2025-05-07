# Setup Notes:
- Import Bookmarks (Located at `Chrome Bookmarks`)
- Sign into GitHub/Gitlab (Find/use credentials)
- Install Chocolately (https://www.liquidweb.com/kb/how-to-install-chocolatey-on-windows/)
- Install 7Zip (https://www.7-zip.org/download.html)
- Install Git (follow `GitConfig\README.md`)
    - https://github.com/GitCredentialManager/git-credential-manager/blob/release/docs/install.md#windows
- Install Cmder (follow `AppBackups\README.md`)
- Install Powershell Profile (follow `Powershell\README.md.md`)
- Install VS Code (follow `VS Code\README.md` for settings setup)
    - NOTE: Chose the `Dark+` theme, has better golang syntax highlighting then default dark theme
- Install Azure Data Studio (follow `Azure Data Studio\README.md` for settings setup)
- Install PowerToys (follow `PowerToys\README.md`for settings setup)

- Other Development Apps to Install:
    - NodeJS (https://nodejs.org/en/download/, choose LTS vers)
        - Make sure to install the Angular CLI as well: `npm install -g @angular/cli` in C:/
    - PoshGit (`Install-Module post-git`)
    - Postman (remember to turn off SSL Certificate Validation)
    - Sublime Text
    - NotePad++
    - Accessibility Insights (https://accessibilityinsights.io/)
    - Azure Data Studio (https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio)
    - Azure Storage Explorer (Optional, useful for querying Cosmos) - (https://azure.microsoft.com/en-us/features/storage-explorer/)
    - Visual Studio 2019 (or whatever the recent release is - https://visualstudio.microsoft.com/)
    - Docker Desktop (https://www.docker.com/products/docker-desktop)

- VS Code Extensions (Enter name under `Extensions` Menu)
    - REST Client
        - See `VS Code\RESTClientTest` for an example of how to use into
        - Basically when using .http project file, each project folder should have a relative settings.json (ex: {projectName\.vscode\settings.json})
            - Make sure to load the entire project into VS Code, or the .http file wont read in the variables from the relative settings.json
    - Azure Account (Optional - Use if Azure Development)
    - Azure Functions (Optional - Use if Azure Development)
    - Azure Resources (Optional - Use if Azure Development)
    - C#
    - PowerShell
    - Mermaid Markdown Syntax Highlighting
    - Markdown All in One
    - XML Format
    - Zoom Bar
    - Docker
    - ESLint
    - GitLens -> WARNING, LARGE COMMIT HISTORY WILL POSSIBLY BREAK WITH INTELISENSE!!! (this is now [bultin w/ VS Code](https://code.visualstudio.com/updates/v1_97#_git-blame-information))
    - Markdown PDF
        - Right Click Markdown File -> Select `Export (pdf)`
        - Created in path relative to Markdown File in folder title `MarkdownPDFOutput`
    - Live Share
    - Live Share Extension
        - Add `C:\Users\{Username}\AppData\Local\Temp\vsliveshare` to `Manage Workspace Trust Folder(s)`
            - You may need to create the `vsliveshare` folder under `Temp` if it doesn't already exist
            - `F1 -> Workspaces: Manage Workspace Trust`
    - Open API (Swagger) Editor
    - Filter Line (by everettjf) - Use by opening `Ctrl+Shift+P` (type in `filter`)
        - A new file will appear with the filter out lines gone ({filename}.{extension}.filterline.log)
        - Remembers search patterns you have used before (helpful for searching for LogEvent Levels, ex: Filter by input string, search pattern" [WRN])
    - Prettier - Code Formatter
        - Enable Format on Save:
            1. File -> Preferences -> Settings
            2. Search for `formatOnSave` and check the box
            3. On `Editor:Default Formatter` (select `Prettier for HTML, select `Typescript and Javascript Language Features` for Typescript, or if you want prettier, which `may` mess formatting up: `esbenp.prettier-vscode`)
    
- Visual Studio Setup
    - To run Applications Locally that use SSL:
        - When running IIS Express, Visual Studio will ask to generate a cert, You'll be asked `This project is configured to use SSL`... select `No` (and check `Don't ask me again` so it doesn't pop up every time).
        - Your browser will warn you though that the website is not trusted (and you'll have to manually say you want to continue on, so its your call)
    - Add Debug & Start Header Tools (if they don't exist): https://stackoverflow.com/questions/26597645/visual-studio-2013-missing-start-stop-debugging-tool-buttons/29808988#29808988
        - Make sure only one Visual Studio Window is open when you do This
        - Tool -> Customize, Select 'Standard' first, then 'Debug' under Toolbars section, if Debug is on a new line, select Debug, choose location as 'Right' then set back to 'Top'. now it should be on the same line, hit 'Close'
        - Save all, then exit Visual Studio, when you enter again, the toolbar should be there (if not, repeat steps again)
    - Add Extensions:
        - CodeMaid
    - Tools -> Options -> Search 'system' -> Find Text Editor -> C# -> Advanced -> Using Directives -> 'Place System Directives first when sorting usings'
    - F12 Not Working?
        - May need to press function key first to use it
        - Fix for removing need to press function key first, google search, usually its BIOS -> Settings -> Fn Lock Options
    - TODO: Look into Default Navigation Assembly Explorer (when you press F12 on assembly/lib code, show the namespace for it)

- Certificates
    - To Add a Certificate To Windows Certificate Management Store - Trusted People
        1. Find/aquire desired Certificate file (download cert to local machine to insert into cert store)  & key/password (notepad or clipboard)
        2. Use Windows Search 'Manage Computer Certificates', open the 'Manage Computer Certificates' appear
        3. Open Personal -> Certificates
        4. Right Click Planel Where Certs are Listed, On 'Right Click Menu', All Tasks -> Import
        5. Go Through Certificate Import Wizard
            - Select the file to import (from C:\Certs or wherever you kept them) (if you have a particular cert file such as '.p12', select 'All Files' as the file type option in the Filer Explorer Window)
            - Enter the password you acquired alongside the cert (kept in clipboard or notepad)
                - Make sure to check the 'Mark Key as exportable.' checkbox (unless not desired)
            - Keep the Certificate Store as the default one the Certificate Import Wizard suggests (Personal Certificate Store)
        6. Select That Newly Imported Cert in the Personal -> Certificates (should already be there), Right Click the Cert
            - Right Menu: All Tasks -> Manage Private Keys
        7. Under the Private Keys Menu, Click the 'Add' button
            - Under the 'Enter the object names to select', enter the username/Active Directory username, then press 'Check Names'
            - username/AD Name should appear in that said box
            - Click 'Ok'
            - Now back in the Private Keys Menu, click 'Apply', then 'OK'
        8. Select that same Cert again, and drag it from Personal -> Certificates to 'Trusted People' (Should automatically go to 'Trusted People -> Certificates')

