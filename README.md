# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
  config/
    common/        # stowed on macOS and Linux
      .config/
        bat, btop, htop, kitty, nvim_josean, ranger, wallpapers
        starship.toml
      .tmux.conf
      .vimrc
    linux/         # stowed on Linux only
      .config/
        autorandr, conky, dunstrc, i3, picom, polybar, rofi
      .xinitrc
      .Xresources
      .xlock/
  install.sh
```

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/) (any version)
  - macOS: `brew install stow`
  - Arch: `sudo pacman -S stow`
  - Ubuntu/Debian: `sudo apt install stow`

## Usage

```zsh
./install.sh            # apply symlinks
./install.sh -n         # dry run (short flag)
./install.sh --dry-run  # dry run (long flag)
./install.sh -h         # show help (short flag)
./install.sh --help     # show help (long flag)
```

On macOS only `common` is stowed. On Linux both `common` and `linux` are stowed.

## Dry run first

It's recommended to run a dry run before applying for the first time to check for conflicts
with existing config files:

```zsh
./install.sh --dry-run
```

If stow reports a conflict, back up or remove the existing file at the target path, then run again.
