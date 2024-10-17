# dotfiles

This repository houses my personalized collection of dotfiles and configuration settings tailored specifically to optimize my development workflow and enhance my productivity.

Contained within are meticulously crafted configurations for Git, Z Shell (ZSH), Powerlevel10k theming, and NVM setup, all meticulously tailored to suit my preferences and requirements.

While primarily intended for my personal use, this repository is openly shared to serve as a reference or source of inspiration for others seeking to streamline their development environments or explore alternative configurations.

## What's Inside

Uncover an array of exciting features within this repository, including:

- **Optimized Git Configuration:** Begin your Git journey with a preconfigured setup tailored for efficiency.
- **Flexible Git Settings:** Enable local overrides for personalized Git configurations on a per-machine basis.
- **Z Shell Customization:** Elevate your shell experience through seamless Z Shell (ZSH) integration, a curated selection of plugins, and effortless management with Antigen.
- **Powerlevel10k Theming**: Customize your shell's appearance and functionality with the Powerlevel10k theme.
- **Node Version Manager (nvm) Setup:** Simplify Node.js version management with seamless nvm integration.
- **Custom Fonts**: Improve your terminal's readability and aesthetics by integrating custom fonts that complement your theme and layout.

And more!

## Requirements

Before going trought the installation process, ensure that the following requirements are met:

- [curl][]: Used for downloading files and resources.
- [Git][]: Required for version control and cloning repositories.
- [Z Shell (ZSH)][]: A powerful shell with additional features and customization options.

## Setting Up

To effortlessly configure your dotfiles, simply execute the provided setup script with the following steps:

1. Clone this repository to your local machine: `git clone git@github.com:scrlkx/dotfiles.git`
2. Navigate to the cloned repository: `cd dotfiles`
3. Run the setup script: `./setup`

The setup script will automatically backup existing configuration files, configure new ones, and provide guidance throughout the process.

## Recommendations

Additionally, the script checks for the availability of the following resources and suggests installing them for an enhanced experience:

- [vim][]: A highly configurable text editor.
- [xclip][]: A command-line interface to the X11 clipboard.
- [bat][]: A cat clone with syntax highlighting and Git integration.
- [glow][]: A terminal markdown viewer with a TUI (Text-based User Interface).

## Backup and Restore

Before making any changes to your configuration files, the setup script includes a backup feature to ensure that your existing settings are safely preserved. When you run the setup script, it automatically creates a backup folder (`dotfiles_backup`) in your home directory (`~/`) and saves copies of your current configuration files there.

If you want to manually access your backup files or verify that the backup was successful, you can navigate to the `dotfiles_backup` folder in your home directory. Inside this folder, you'll find copies of your original configuration files, allowing you to restore them if needed.

[curl]: https://curl.se
[Git]: https://git-scm.com
[Z Shell (ZSH)]: https://www.zsh.org
[vim]: https://www.vim.org/
[xclip]: https://github.com/astrand/xclip
[bat]: https://github.com/sharkdp/bat
[glow]: https://github.com/charmbracelet/glow
