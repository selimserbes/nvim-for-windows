# Neovim Configuration

This repository contains a customized Neovim configuration for development with Next.js, Go, Rust, and Python. These settings are optimized for **Windows** and utilize **Scoop** for software installation.

## Installation

1. [Download and install Neovim](https://neovim.io/).
2. Install [Scoop](https://scoop.sh/) if you haven't already.
3. Additionally, you may need to install other necessary tools for development.

   ```shell
   scoop install gcc gdb mingw-winlibs-llvm-ucrt-mcf llvm zig
   ```

   1. You can also explore and install other useful software from [Scoop website](https://scoop.sh/#/apps).

4. To integrate nvchad into your Neovim setup:

   1. If you're using Command Prompt (CMD):

   ```shell
    git clone https://github.com/NvChad/starter %USERPROFILE%\AppData\Local\nvim && nvim
   ```

   2. If you're using PowerShell (pwsh):

   ```shell
    git clone https://github.com/NvChad/starter $ENV:USERPROFILE\AppData\Local\nvim && nvim
   ```

5. Clone this repository: `git clone https://github.com/selimserbes/nvim.git`.
6. Copy `nvim/init.vim` to Neovim's configuration directory (`%APPDATA%\nvim\` on Windows).
7. Start `nvim` and wait for the plugins to install.

