# Dotfiles
This is my dotfiles for both OSX and Visual Studio Code online.

## OSX Prerequisite

    xcode-select --install

## Installation

    git clone https://github.com/BosEriko/dotfiles.git ~/dotfiles
    sh ~/dotfiles/install.sh

## A few more steps (OSX)
Open Karabiner-Elements and enable the following complex modifications:
- [Change caps_lock to control if pressed with other keys, to escape if pressed alone.](https://pqrs.org/osx/karabiner/complex_modifications/#caps_lock) ([Open JSON](https://pqrs.org/osx/karabiner/complex_modifications/json/caps_lock.json))
- [Mouse keys (full) (rev 4)](https://pqrs.org/osx/karabiner/complex_modifications/#mouse_keys_full) ([Open JSON](https://pqrs.org/osx/karabiner/complex_modifications/json/mouse_keys_full.json))
- Change right_command+hjkl to arrow keys

After setting Karabiner-Elements you can now close it and then proceed to installing [Alfred](https://www.alfredapp.com/) then do the following:
- Disable Spotlight's hotkeys
- Set Alfred's hotkey to `Command + Spacebar`
- Enable Web Bookmarks under the Features tab

When you're done setting up Alfred you can move on to installing [Spectacle](https://www.spectacleapp.com/). Set up its controls with the following:
- `Option + Command + H` for **Left Half**
- `Option + Command + L` for **Right Half**
- `Option + Command + K` for **Top Half**
- `Option + Command + J` for **Bottom Half**

Close Spectacle's preferences and then open Hyper or Visual Studio Code and that's it!

## Note
I also have some [Chrome Extensions](markdown/chrome-extensions.md), [Apps](markdown/apps.md) and [Games](markdown/games.md) that I frequently use.

## Call to action
If you want to share some ideas you can email me at mail@boseriko.com.
