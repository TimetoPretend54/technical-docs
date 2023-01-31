# Using VS Code REST Client

1. Copy/Follow `RESTClientTest` Project (can be found in Docs Repo `VS Code`)
2. Make sure to open the `.http` file within the "project' workspace (right click `RESTClientTest` -> `Open w/ VS Code` or `code .` under folder directory in Powershell)
3. Add non-sensitive env variables to `RESTClientTest/.vscode/settings.json`
4. Add sensitie env varibles to VS Code's Global `settings.json` (`F1 -> Preferences: Open Settings (JSON)`)
    - Follow `RESTClientTest/.vscode/settings.json`'s `rest-client.environmentVariables` object for structure/syntax/format