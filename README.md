# dotfiles

This repository houses my personalized collection of dotfiles and configuration settings tailored specifically to optimize my development workflow and enhance my productivity.

While primarily intended for my personal use, this repository is openly shared to serve as a reference or source of inspiration for others seeking to streamline their development environments or explore alternative configurations.

## What's Inside

Besides being essentially ready-to-use and pretty polished, here’s a breakdown of everything that’s included:

### Installed Tools

- **[zgenom]** – A lightweight and fast plugin manager for [zsh], used to manage themes and plugins efficiently.
- **[diff-so-fancy]** – Enhances the readability of `git diff` output by adding color and formatting, making code reviews in the terminal much easier.
- **[nvm]** - Allows easy installation, management, and switching between multiple versions of Node.js.
- **[Homebrew]** - The package manager that simplifies the installation of software and command-line tools.
- **[xclip]** – Provides clipboard access from the command line on Linux, useful for piping content in or out of the clipboard
- **[bat]** – A cat clone with syntax highlighting, Git integration, and line numbers for improved readability of file contents
- **[glow]** – A terminal-based Markdown reader that renders .md files beautifully right in your CLI

### Custom Fonts

- **[IBMPlexMono]** - A developer-friendly monospaced font, used as my preferred choice for code editors.
- **[JetBrainsMono]** - Another developer-friendly monospaced font, alternative when IBMPlexMono doens't look that good.
- **[MesloLGS]** - A customized version of MesloLG, recommended for use with [p10k] for proper icon and prompt alignment.

### Configuration Files

- **[git](config/.gitconfig)**
- **[zsh](config/.zshrc)**
- **[p10k](config/.p10k.zsh)**
- **[kitty](config/kitty.conf)**
- **[p10k](config/.p10k.zsh)**
- **[aliases](config/.aliases)**

## Requirements

Before going trought the installation process, ensure that the following requirements are installed on the machine: [curl], [git], [kitty] and [zsh].

## Usage

To effortlessly configure your dotfiles, simply execute the provided setup script with the following steps:

1. Clone this repository to your local machine: `git clone git@github.com:scrlkx/dotfiles.git`
2. Navigate to the cloned repository: `cd dotfiles`
3. Run the setup script: `./setup`

The setup script will automatically backup existing configuration files, configure new ones, and provide guidance throughout the process.

## Backup and Restore

Before making any changes to your configuration files, the setup script includes a backup feature to ensure that your existing settings are safely preserved. When you run the setup script, it automatically creates a backup folder (`dotfiles_backup`) in your home directory (`~/`) and saves copies of your current configuration files there.

If you want to manually access your backup files or verify that the backup was successful, you can navigate to the `dotfiles_backup` folder in your home directory. Inside this folder, you'll find copies of your original configuration files, allowing you to restore them if needed.

[curl]: https://curl.se
[git]: https://git-scm.com
[zsh]: https://www.zsh.org
[kitty]: https://sw.kovidgoyal.net/kitty

[zgenom]: https://github.com/jandamm/zgenom
[diff-so-fancy]: https://github.com/so-fancy/diff-so-fancy
[nvm]: https://nvm.sh
[Homebrew]: https://brew.sh
[xclip]: https://github.com/astrand/xclip
[bat]: https://github.com/sharkdp/bat
[glow]: https://github.com/charmbracelet/glow

[JetBrainsMono]: https://www.jetbrains.com/lp/mono
[MesloLGS]: https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k

[p10k]: https://github.com/romkatv/p10k
