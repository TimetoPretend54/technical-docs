# MacOS Notes/Tips

## Windows Keyboard to MacOS

**NOTE:** Follow this guide first: [Switch Control and Command Keys, MacOS](https://www.macinstruct.com/tutorials/how-to-switch-the-control-and-command-keys/)

- MacOS Command Key (⌘) is swapped w/ Control (^)
- Works better w/ Windows Centered Keyboards (only do this for window keyboard, not mac keyboard)

| Windows           | Mac               |
| ----------------- | ----------------- |
| CONTROL (Ctrl)    | COMMAND/Apple (⌘) |
| ALT               | OPTION (⌥)        |
| SHIFT             | SHIFT (⇧)         |
| Windows/Start (⊞) | CONTROL (⌃)       |
| BACKSPACE         | DELETE            |
| DELETE            | DEL               |
| ENTER             | RETURN            |

## Spotlight Search

1. Open Spotlight Search via `COMMAND (⌘) + SPACE`
2. Search for `App/Files`
   - **Files:** will show previews, which can be opened (based on the default app associated w/ file extension)
   - **Applications:** will be able to be opened from spotlight search

## Syntax Highlighting for Preview

**NOTE:** To open preview files:

1. Open Finder
2. Select file (such as src code file)
3. Press `SPACE`

### To have src code syntax highlighting

Run in shell (fish/zsh will work as well):

```
brew install --cask qlcolorcode
```

## MacOS Preview/Screenshot Edit

1. `COMMAND (⌘) + SHIFT(⇧) + 4` (Changes cursor to snipping cursor, click/drag to use)
2. Hold `CONTROL (^) while clicking/dragging left Click` to copy screenshot to clipboard (otherwise if just clicking and dragging, will get saved as image)
   - By default, screenshots are saved to Desktop, to change that, COMMAND (⌘) + Spacebar -> Search/open `Screenshot.app` -> Options -> `Save to` -> `Other Location` -> Create `Screenshots` Folder in `~/Pictures` (unless desired somewhere else)
3. Open Preview (COMMAND (⌘) + Spacebar -> Search/open `Preview.app`)
4. Find Preview Menu Bar (Top Left Corner of Screen), Select File -> `New From Clipboard`
5. Press `SHIFT (⇧) + COMMAND (⌘) + A` to Show Markup Toolbar for easy editing
   - Also can press Symbol/Icon next the `Search` Bar or Preview -> View -> `Show Markup Toolbar`
6. When done editing enter `COMMAND (⌘) + S` to save, or Preview -> File -> Save

## Text Editor Shortcuts/Commands (VS Code Focused)

**NOTE**:

- `DELETE` -> `BACKSPACE`
- `DEL` -> `DEL`

| Description                                                          | Shortcut/Command                                          |
| -------------------------------------------------------------------- | --------------------------------------------------------- |
| Extends the selection/cursor position to the next line (Esc to exit) | `COMMAND (⌘) + OPTION (⌥) + DOWN/UP`                      |
| Moves cursor(s) to the beginning/end of line                         | `COMMAND (⌘) + LEFT/RIGHT`                                |
| Hightlights the beginning/end of line (from cursor position)         | `COMMAND (⌘) + SHIFT (⇧) + LEFT/RIGHT`                    |
| Move cursor between/across words                                     | Hold `OPTION (⌥) + LEFT/RIGHT`                            |
| Hightlights/moves across words                                       | Hold `OPTION (⌥) + SHIFT (⇧) + LEFT/RIGHT`                |
| Deletes all word characters before cursor                            | `OPTION (⌥) + DELETE`                                     |
| Deletes all word characters after cursor                             | `OPTION (⌥) + DEL`                                        |
| Deletes all line content before cursor                               | `COMMAND (⌘) + DELETE`                                    |
| Deletes all line content after cursor                                | `COMMAND (⌘) + DEL`                                       |
| Duplicate Line (below cursor)                                        | `SHIFT (⇧) + OPTION (⌥) + DOWN/UP`                        |
| Delete Line (No cut)                                                 | `COMMAND (⌘) + SHIFT (⇧) + K`                             |
| Delete Line (Cut)                                                    | `COMMAND (⌘) + X`                                         |
| Copy Hightlighted Content onto Clipboard                             | `COMMAND (⌘) + C`                                         |
| Paste Clipboard Content                                              | `COMMAND (⌘) + V`                                         |
| Move Clipboard Content (Useful for Finder App)                       | `OPTION (⌥) + COMMAND (⌘) + V`                            |
| Copy Filepath onto Clipboard (Useful for Finder App)                 | `OPTION (⌥) + COMMAND (⌘) + C`                            |
| Selects all instances of the current highlighted word                | `COMMAND (⌘) + SHIFT (⇧) + L`                             |
| Selects the next instance... and the one after that... etc           | `COMMAND (⌘) + D`                                         |
| Hide VS Code Sidebar (some extensions may use this shortcut)         | `COMMAND (⌘) + B`                                         |
|                                                                      | move/click cursor where not on main text editor if needed |

## Bash (zsh/fish) Terminal Shortcuts

**NOTE:** Install `fzf` First ([click link here](https://github.com/junegunn/fzf#using-homebrew))

| Description                                                                  | Shortcut/Command    |
| ---------------------------------------------------------------------------- | ------------------- |
| Open Finder in working directory                                             | `open .`            |
| FZF Command History Search (use arrows to navigate,`RETURN` to select)       | `CONTROL (⌃) + R`   |
| FZF Navigate Directories (use arrows to navigate,`RETURN` to select)         | `cd **` + TAB       |
| Open FZF (search, use arrows to navigate,`RETURN` to select)                 | `fzf`               |
|                                                                              | ex: `code **` + TAB |
| Go to Beginning of Line                                                      | `CONTROL (⌃) + A`   |
| Go to Ending of Line                                                         | `CONTROL (⌃) + E`   |
| Delete Line                                                                  | `CONTROL (⌃) + U`   |
| Delete from cursor to the end of the command line                            | `CONTROL (⌃) + K`   |
| Delete from cursor to the start of the word (i.e. delete backwards one word) | `CONTROL (⌃) + W`   |
| Paste word or text that was cut using one of the deletion shortcuts          | `CONTROL (⌃) + Y`   |

## MacOS General Shortcuts

| Description                                                                                                  | Shortcut/Command                           |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------ |
| Locks the MacOS Screen                                                                                       | `COMMAND (⌘) + CONTROL (⌃) + Q`            |
| Spotlight Search (find applications/files, preview, and open them), see [more info above](#spotlight-search) | `COMMAND (⌘) + SPACE`                      |
| Take Screenshot (Drag Mouse cursor), see [more info above](#macos-previewscreenshot-edit)                    | `COMMAND (⌘) + SHIFT(⇧) + 4`               |
| Move Clipboard Content (Useful for Finder App)                                                               | `OPTION (⌥) + SHIFT(⇧) + V`                |
| Copy Filepath onto Clipboard (Useful for Finder App)                                                         | `OPTION (⌥) + SHIFT(⇧) + C`                |
| Switch between windows (Use Tab or Arrow Keys to select, release `COMMAND (⌘)` on selection)                 | `COMMAND (⌘) + TAB`                        |
| Paste without formatting                                                                                     | `OPTION (⌥)  + SHIFT(⇧) + COMMAND (⌘) + V` |
