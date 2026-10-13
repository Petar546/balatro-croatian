# Balatro Croatian (Hrvatski) Localization Mod

This mod brings partial Croatian language support and translations to **Balatro**. It is built as a standalone package for **Steamodded** and works natively on all platforms (Windows, Linux, and Steam Deck).

---

## 🛠️ Prerequisites

Before installing the translation pack, your game must have the core mod-loading framework installed (**Lovely** and **Steamodded**). If you already have these set up, skip straight to the "How to Apply" section.

### 1. Install Lovely (The Injector)
1. Head over to the [Lovely GitHub Releases](https://github.com/ethangreen-dev/lovely-injector/releases) page and download the latest Windows zip archive (it usually contains a file named `version.dll` or `winmm.dll`).
2. In Steam, right-click **Balatro** -> **Manage** -> **Browse local files**.
3. Copy and paste that downloaded `.dll` file directly into the main game folder (right next to `Balatro.exe`).

### 2. Set Up Steam Launch Options (Linux / Steam Deck Users)
Because Balatro is a Windows game running through Proton on Linux, you must force it to load your new files:
1. In Steam, right-click **Balatro** -> **Properties**.
2. Under the **General** tab, scroll down to **Launch Options**.
3. Paste the following command exactly:
   ```bash
   WINEDLLOVERRIDES="winmm=n,b;version=n,b" %command%
   ```

### 3. Install Steamodded
1. **Important:** Run vanilla Balatro at least once and reach the main menu so the game can generate your native save and config folders (`AppData`).
2. Navigate to your local game data path (see the operating system paths in the section below).
3. Inside the existing `Balatro` folder, **you must manually create a new directory named `Mods`** (Make sure to capitalize the **M**! Linux file structures are strictly case-sensitive).
4. Go to the [Steamodded GitHub Releases](https://github.com/Steamodded/smods/releases) page.
5. Under the latest release, download the **Source code (zip)** file. Do *not* download any `.exe` installers.
6. Extract the zip file, rename the extracted folder to exactly `Steamodded`, and move it directly into your newly created `Mods` folder. Your path should look like this: `.../Balatro/Mods/Steamodded/`.

---

## 🚀 How to Apply the Translation

1. Download and extract this mod folder (`balatro-croatian`).
2. Drop the entire `balatro-croatian` folder straight into your `Mods` directory next to the Steamodded folder:

   * **Linux / Steam Deck (Standard Steam):**
     ```text
     ~/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/
     ```
   * **Linux (Flatpak Steam version):**
     ```text
     ~/.var/app/com.valvesoftware.Steam/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/
     ```
   * **Windows:**
     Press `Win + R`, type `%appdata%/Balatro/Mods`, and press Enter.

3. Launch **Balatro**.
4. In the main menu, click the purple **Mods** button to ensure "Croatian Localization" is successfully loaded (it will display a green checkmark).

---

## ⚠️ Important Translation Notes
Text tags inside curly brackets (like `{C:mult}`) and number markers inside pound signs (like `#1#`) handle text color formatting and active game variables. **Do not change or delete these tags** when editing the `localization/hr.lua` file, or the game will crash.
