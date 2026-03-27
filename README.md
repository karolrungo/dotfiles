# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── config/
│   ├── common/           # stowed on macOS and Linux
│   │   ├── .config/
│   │   ├── .zshrc
│   └── linux/            # stowed on Linux only
│       └── .config/
├── ansible/
│   ├── playbook.yml      # main Ansible playbook
│   └── vars/
│       └── packages.yml  # package lists
└── install.sh
```

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)
  - macOS: `brew install stow`
  - Arch: `sudo pacman -S stow`
- [Ansible](https://www.ansible.com/) (optional, for package management)
  - macOS: `brew install ansible`
  - Arch: `sudo pacman -S ansible`

## Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/<user>/dotfiles.git ~/Repositories/dotfiles
cd ~/Repositories/dotfiles

# 2. Symlink dotfiles
./install.sh

# 3. Install packages (optional)
cd ansible
ansible-playbook playbook.yml            # macOS
ansible-playbook playbook.yml --ask-become-pass  # Arch
```

## Dotfiles (Stow)

```bash
./install.sh            # apply symlinks
./install.sh -n         # dry run
./install.sh --help     # show help
```

On macOS only `common` is stowed. On Linux both `common` and `linux` are stowed.

### Dry run first

Run a dry run before applying for the first time to check for conflicts:

```bash
./install.sh --dry-run
```

If stow reports a conflict, back up or remove the existing file, then run again.

## Packages (Ansible)

Edit `ansible/vars/packages.yml` to customize your package lists:

- `common_packages` - installed on both macOS and Arch
- `macos_packages` - Homebrew CLI tools
- `macos_casks` - Homebrew GUI applications
- `arch_packages` - Arch/AUR packages

Run the playbook:

```bash
cd ansible
ansible-playbook playbook.yml                    # macOS
ansible-playbook playbook.yml --ask-become-pass  # Arch (needs sudo)
```
