# 🧰 Windows Context Menu Powerful Tools

Bundle of best ***Windows shell File Explorer context menu tools*** sorted and organized in cascaded menus.

- All tools are light because condensed in command-lines **using only Windows 10-11 built-in commands**.
- Each tool can be installed separately.
- These commands are written into Windows Registry when you install these tools.
- No `.exe` nor `.msi` nor `.inf` to install tools. No file copied. Instant install.
- We recommend optional upgrades like [PowerShell 7 x64 MSI] or [Windows Terminal], because these open-source projects are pushed by *Microsoft*, and will be probably built-in next releases of Windows.
- On **Windows 11**: \
→ need to hold `Shift` while right-clicking on a folder \
→ or right click on a folder then *Show more options* \
→ or follow [these instructions](#-windows-11-new-context-menu) to remove/restore this Windows 11 extra layer

> Tested on Microsoft Windows 10/11 Pro 64-bits.

---

# 📝 Files & folders listing from File Explorer

![Files-folders-listing-from-Windows-File-Explorer-screenshot](/readme-images/Files-folders-listing-from-Windows-File-Explorer-screenshot.png "Files and folders listing from Windows File Explorer")

Global features:

- Lists folders and files from any directory (**drive** or **folder** or **shortcut `.lnk`** or **network location**) on both *File Explorer* left and right panes.

- Reads all folders and files including hidden ones.

- Supports all Windows glyphs in all Windows languages/region versions.

- To use it, right click one the folder you want to list the content, then select *List in Clipboard* or *List in Notepad*, then select:
  - *List content*: to list folders and files
  - *List content with subfolders*: to list full path of each element and subfolders
  - *List content with subfolders as Admin*: if it's a protected folder
  - *List only files*
  - *List on folders*
  - *Display tree* (only for *List in Notepad*): draws your folders tree in a text file, using `tree.com` command. A second command does the same with files. Only displays ASCII characters. Example below:

```text
C:\WINDOWS
└───Boot
    └───DVD
        ├───EFI
        │   └───en-US
        └───PCAT
            └───en-US
```

## ![clipboard-icon] List files in Clipboard

Lists files/folders contained in any folder and copy the list to the Clipboard.

💿 To install this tool separately, just run `TOOL_List-in-Clipboard.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

## ![notepad-icon] List files in Notepad

Lists files/folders contained in any folder and displays the list in a temporary Notepad file that disappears as soon as you close it.

- ⚠**Windows 11 requires** to configure Notepad: Notepad > ⚙️ > *When Notepad starts* > select *Start new session and discard unsaved changes*

💿 To install this tool separately, just run `TOOL_List-in-Notepad.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

---

# ![lock-bitLocker-drive-icon] Lock BitLocker Drive

![Lock-BitLocker-Driv-screenshot](/readme-images/Lock-BitLocker-Drive-screenshot.png "BitLocker Drive unlocking from Windows File Explorer")

- Adds the symmetrical feature of existing *Unlock Drive context menu*, never offered by *Microsoft*. It lets you:
  - Lock your external *BitLocker encrypted drive* whenever you want.
  - Directly from *File Explorer*.
  - No need to disconnect/eject/unplug your drive anymore.

- This tool calls the Windows built-in program `manage-bde.exe`

- Locks the drive even when applications have non-exclusive access to the volume.

- Applies on all external drives, displayed in both *File Explorer* left and right panes. If your drive is **`C:`** or is **not locked** or is **not BitLocker encrypted**, then the tool starts and **ignore the drive**.

- To use it, right click on your BitLocker locked external drive → *Lock BitLocker Drive* → Click *Yes*.

💿 To install this tool separately, just run `TOOL_Lock-BitLocker-Drive.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

---

# ![get-filehash-icon] Calculates `SHA` and `MD5` hashes of files

![Get-file-hash-screenshot](/readme-images/Get-file-hash-screenshot.png "SHA256 hash calculated directly from File Explorer")

- Calculates and displays in a terminal window one the following hashes `SHA-1` `SHA-256` `SHA-384` `SHA-512` `MD5` for any file(s) selected in *File Explorer*.

- Fast result because only selected hash is calculated. At the opposite, others hash software/plugins compute big files during long time, because they calculate 4 more useless hashes, in addition the one you're targeting.

- Applies on all selected files in the *File Explorer* right pane.

- To use it, right click on selected files → *Get file Hash*.

💿 To install this tool separately, just run `TOOL_Get-fileHash.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

---

# ![wipe-free-space-icon] Overwrite deleted data - Drive shredder

![Wipe-free-space-screenshot](/readme-images/Wipe-free-space-screenshot.png "Overwriting D:\ drive from Windows File Explorer")

- Secures all your external drives before giving them, by ensuring that all **deleted data** has been **overwritten**. Usually, even if a file is deleted and not just moved to *Recycle Bin*, this file is just **deindexed**, and entire content remains totally **recoverable** from your disk, until this content is overwritten by another file. This reason explain why deletions are so fast.

- To secure your disk without formatting, this tool calls the Windows built-in program `cipher.exe` which writes successively 3 big files to fill entire empty space, in a temporary file (`D:\EFSTMPWP\filE6A3.tmp` for example). Of course, it **keeps existing files**.

- Avoids traditional formatting, which is unsecure, and which erase unnecessarily the files you want to keep.

- Executes 3 writing sequences: a first one only with `0` bits, a second one only with `1` bits, and a third one with random bits.

- Applies on all internal and external drives, displayed in both *File Explorer* left and right panes.

- To use it, right click on your external drive → *Overwrite deleted data*. When process is done, you'll see 3 full lines of 100 points each one, like screenshot above.

💿 To install this tool separately, just run `TOOL_Shredder-Wipe-free-space.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

---

# 👇 *Prompt here* Tools

![Prompt-here-Tools-screenshot](/readme-images/Prompt-here-Tools-screenshot.png "PowerShell terminal called directly from a Windows File Explorer directory")

Each ***prompt here*** Tool:

- Opens terminal from any directory (**folder** or **shortcut `.lnk`** or **network location**) on both *File Explorer* left and right panes.

- Opens terminal as user or *as Administrator* (please note *run as Administrator* doesn't apply from directory's shortcuts `.lnk`)

- Doesn't open from *Windows Libraries*

- Doesn't open from *drives* like `C:\` or `D:\`

- On Windows 10 or 11, it opens in a *classic terminal window*

- On Windows 11 only, if optional [Windows Terminal] is installed, it opens prompt inside

## ![commandprompt-icon] Command Prompt here | ☝️built-in Windows 11

Let you run built-in ***Command Prompt*** located in Path Environment `cmd.exe` from any folder.

💿 To install this tool separately, just run `TOOL_PromptHereW10-CMD.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

## ![powershell5-icon] PowerShell 5 here | ☝️built-in Windows 11

Let you run built-in ***Windows PowerShell*** located in Path Environment `powershell.exe`, from any folder. By default it's always *Windows PowerShell x64* on Windows 64-bits.

💿 To install this tool separately, just run `TOOL_PromptHereW10-PowerShell5.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

## ![powershell5-ise-icon] PowerShell 5 ISE here

- Let you run built-in ***Windows PowerShell ISE*** located in Path Environment `powershell_ise.exe`, from any folder. By default it's always *Windows PowerShell ISE x64* or Windows 64-bits.

- Limitation: doesn't work from a folder which contains in his path `[` or `]` character.

💿 To install this tool separately, just run `TOOL_PromptHere-PowerShell5-ISE.reg` and confirm 3 dialog boxes. To install [bundle it's here](#-install-all-tools).

## ![powershell7-icon] PowerShell 7 here

- Let you run latest ***PowerShell 7*** located in Path Environment `pwsh.exe`, from any folder.

- ⚠**Requires** install of [PowerShell 7 x64 MSI] into default directory `C:\Program Files\PowerShell\`.

- ⚠**Doesn't work** with ***PowerShell 7 from Microsoft Store*** which is a limited version. Better use [PowerShell 7 x64 MSI] version.

- Replaces *PowerShell 7 default context menu* to get a clean cascaded menu and *run as Admin feature*.

💿 To install this tool separately, just run `TOOL_PromptHereOptional-PowerShell7.reg` and confirm 3 dialog boxes. It replaces existing *PowerShell 7* context menu. To install [bundle it's here](#-install-all-tools).

## ![windowsterminal-icon] Windows Terminal here | ☝️built-in Windows 11

- Let you run latest ***Windows Terminal*** located in Path Environment `wt.exe`, from any folder.

- ⚠**Windows 10 requires** install of [Windows Terminal] directly from Microsoft Store

- *Windows Terminal default context menu* can be disabled, to get both clean **cascaded menu** and ***run as Admin feature*** instead.

💿 To install this tool separately:

- Run `TOOL_PromptHereW10-WindowsTerminal.reg`
- Copy `WindowsTerminal.ico` to `C:\Windows\System32\` (this is necessary because *Windows Terminal* icon path always change with auto-updates provided by *Microsoft Store*).
- [Below instructions](#-open-in-terminal-default-context-menu) to remove/restore *Open in Terminal* context menu provided by *Windows Terminal install*.

## ![gitbash-icon] Git Bash (and Git GUI) here

- Let you run ***Git Bash*** and ***Git GUI*** from any folder.

- ⚠**Requires** [install of Git] into default directory `C:\Program Files\Git\`.

[install of Git]: <https://git-scm.com/download/win>

- Replaces *Git default context menu* to get a clean cascaded menu and *run as Admin feature*.

💿 To install this tool separately, just run `TOOL_PromptHereOptional-Git.reg` and confirm 3 dialog boxes. It replaces existing *Git* context menu. To install [bundle it's here](#-install-all-tools).

---

# 💾 Installation

## 💿 Install all tools

- Click *Code* green button above → *Download ZIP*, then extract `WindowsContextMenuTools-main.zip`.

- **Run `TOOLS_ALL-Install.cmd` to install all tools automatically.**

- You can optionally delete the files corresponding to the tools you don't want, so `TOOLS_ALL-Install.cmd` will ignore those tools.

- Just run a `.reg` if you want to install a specific one.

- You can run install as many times as you want, it always deletes previous installation.

## ❌ Uninstall all tools

- **Run `TOOLS_ALL-Uninstall.reg` to remove all tools automatically.**

- Optionally, you can delete Windows Terminal icon located here `C:\Windows\System32\WindowsTerminal.ico`

## ⚙ Context menus

| | Windows 11 new context menu | *Open in Terminal* default context menu provided by [Windows Terminal] |
| :--- | :--- | :--- |
| ❌ To remove | Run `Windows11ContextMenu-remove-(need-restart).reg`, then logoff/logon. | Run `WindowsTerminalDefaultMenu-remove-(need-restart).reg`, then logoff/logon. |
| 📦 To restore | Run `Windows11ContextMenu-restore-(need-restart).reg`, then logoff/logon. | Run `WindowsTerminalDefaultMenu-restore-(need-restart).reg`, then logoff/logon. |

---

# 😉 Author

**Vincent Bounce** 🇫🇷 | **𝕏 [@VincentBounce](https://x.com/VincentBounce)** | **YouTube [@VincentBounce](https://www.youtube.com/@VincentBounce/)** | **Instagram [@VincentBounce](https://instagr.am/vincentbounce/)**

---

# 🗂️ Table of contents

- [Windows Context Menu Powerful Tools](#-windows-context-menu-powerful-tools)

- [Files & folders listing from File Explorer](#-files--folders-listing-from-file-explorer)

  - List files in Clipboard

  - List files in Notepad

- [Lock BitLocker Drive](#-lock-bitlocker-drive)

- [Calculates SHA and MD5 hashes of files](#-calculates-sha-and-md5-hashes-of-files)

- [Overwrite deleted data - Drive shredder](#-overwrite-deleted-data---drive-shredder)

- [Prompt here Tools](#-prompt-here-tools)

  - Command Prompt here

  - PowerShell 5 here

  - PowerShell 5 ISE here

  - PowerShell 7 here

  - Windows Terminal here

  - Git Bash (and Git GUI) here
  
- [Installation](#-installation)

  - Install all tools

  - Uninstall all tools

  - Context menus

- [Author](#-author)

[clipboard-icon]: /readme-images/List-in-Clipboard-h32px.png

[notepad-icon]: /readme-images/List-in-Notepad-h32px.png

[lock-bitLocker-drive-icon]: /readme-images/Lock-BitLocker-Drive-h32px.png

[get-filehash-icon]: /readme-images/Get-fileHash-h32px.png

[wipe-free-space-icon]: /readme-images/Wipe-free-space-h32px.png

[commandprompt-icon]: /readme-images/CommandPrompt-h32px.png

[powershell5-icon]: /readme-images/PowerShell5-h32px.svg

[powershell5-ise-icon]: /readme-images/PowerShell5-ISE-h32px.png

[powershell7-icon]: /readme-images/PowerShell7-h32px.svg

[gitbash-icon]: /readme-images/GitBash-h32px.svg

[windowsterminal-icon]: /readme-images/WindowsTerminal-h32px.svg

[PowerShell 7 x64 MSI]: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows

[Windows Terminal]: https://www.microsoft.com/store/productId/9N0DX20HK701
