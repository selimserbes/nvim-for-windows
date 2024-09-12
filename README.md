# Neovim Configuration

This repository contains a customized Neovim configuration for development with Next.js, Go, Rust, and Python. These settings are optimized for **Windows** and utilize **Scoop** for software installation.

## Installation

1. [Download and install Neovim](https://neovim.io/).
2. Install [Scoop](https://scoop.sh/) if you haven't already.
3. Additionally, you may need to install other necessary tools for development.

   ```shell
   scoop install gcc gdb mingw-winlibs-llvm-ucrt-mcf llvm zig ripgrep
   ```

   1. You can also explore and install other useful software from [Scoop website](https://scoop.sh/#/apps).

4. To integrate nvchad into your Neovim setup:

   1. If you're using PowerShell (pwsh):

   ```shell
   git clone --branch v2.0 https://github.com/NvChad/NvChad $ENV:USERPROFILE\AppData\Local\nvim
   ```

5. Clone this repository: `git clone https://github.com/selimserbes/nvim-for-windows.git $ENV:USERPROFILE\AppData\Local\nvim`.
6. Copy the contents of the `nvim-for-windows` folder to Neovim's configuration directory (`%LOCALAPPDATA%\nvim\` on Windows).
7. Run `cd $env:LOCALAPPDATA\nvim` and then `nvim` in PowerShell to start Neovim and wait for plugins to install.

## Usage

These settings are optimized for development with Next.js, Go, Rust and Python projects. Additionally, they include features such as color schemes, auto-completion, and syntax highlighting.

## Features

- **Auto Formatting:** Provides the ability to automatically format your code.
- **Linting:** Offers the ability to check your code for errors and inconsistencies.
- **Debugging:** Enables preparing your code for debugging and facilitates your debugging process.

## Contributing

Contributions are welcome! Please open a pull request or file an issue.

## License

This project is licensed under the MIT License. See the [`LICENSE`](LICENSE) file for more information.
