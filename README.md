# webdev-bashrc 
![banner](https://github.com/mahdi-momeni/myBashrc/assets/32864532/c502180e-2993-4457-9fd2-0efe8d0bc99b)

This is an open-source repository containing my personal `.zshrc` configuration. The `.bashrc` file is a script that is executed whenever you start a new interactive shell session. This configuration aims to enhance the terminal experience for web development and provide useful shortcuts, aliases, and functions.

## Table of Contents

- [🚀 Features](#features)
- [⚠️ Prerequisites](#prerequisites)
- [💻 Installation](#installation)
- [📖 Usage](#usage)
- [💅 Customization](#customization)
- [👫 Contributing](#contributing)

## Features

- Pre-configured aliases for common commands and shortcuts.
- Environment variables to customize the prompt, colors, and behavior.
- Utility functions for file and directory operations.
- Git shortcuts for streamlined version control.
- Integration with popular web development tools like NVM, Visual Studio Code, and Postman.

## Prerequisites
This bashrc config tested for ubuntu 22.04.10

## Installation

```
wget -qO- https://raw.githubusercontent.com/meiti-x/webdev-bashrc/main/.bashrc > webdev-bashrc.txt
cat webdev-bashrc.txt >> ~/.zshrc
source ~/.zshrc

install-webdev-prerequisites
```
## Usage

This `.bashrc` configuration provides various aliases and functions to streamline your workflow. Here are some examples of how you can use them:

- Use the `update` alias to update the package lists: `update`.
- Upgrade installed packages using the `upgrade` alias: `upgrade`.
- Use the `ll` alias to list all files and directories in the current directory: `ll`.
- Navigate up one directory level using the `..` alias: `..`.
- Navigate up two directory levels using the `...` alias: `...`.

These are just a few examples, and you can explore the `.bashrc` file to discover more shortcuts and functions available.

## Customization

You can customize this `.bashrc` configuration to suit your needs. Feel free to modify the aliases, functions, and environment variables to match your preferences. You can also add your own aliases and functions to extend the configuration further.

## Contributing

Contributions to this open-source project are welcome! If you find any bugs, have feature requests, or want to make improvements, please follow these steps:

1. Fork the repository and create a new branch.
2. Make your changes and test them thoroughly.
3. Commit your changes with clear and concise messages.
4. Push your changes to your forked repository.
5. Submit a pull request, explaining the changes you made and why they should be merged.

