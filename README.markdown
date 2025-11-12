![Cover](./cover.png)

# Hefgi's Dotfiles — ⚡️ Dev Setup

This repository contains my configuration files and setup scripts for a macOS development environment using iTerm2 + Zsh + Oh My Zsh + Powerlevel10k + Claude Code, tailored for **TypeScript / Node.js / React / React Native** *and* **Python** engineers of the AI era.

---

## 📋 Table of Contents
- [🎯 Goals](#goals)  
- [🛠 Prerequisites](#prerequisites)  
- [🧰 Setup](#setup)  
  - [✅ Installation Steps](#installation-steps)  
  - [🎨 Styling: Solarized everywhere](#styling-solarized-everywhere)  
- [📚 Usage](#usage)  
  - [🧪 Dev Env](#dev-env)  
    - [TypeScript / Node / React / React Native](#typescript-node-react-react-native)  
    - [Python](#python)  
    - [IDE / Text Editors](#ide-text-editors)  
  - [🔖 Aliases](#aliases)  
  - [🛠 Tooling: cool stuff to use](#tooling-cool-stuff-to-use)  
- [❤️ Acknowledgments](#acknowledgments)

---

## 🎯 Goals  
- Fully declarative via Homebrew Bundle (`Brewfile`)  
- Minimal manual setup steps  
- iTerm2 + Zsh shell setup optimized for developer productivity  
- Powerlevel10k prompt theme  
- Essential Zsh plugins: autosuggestions, fast syntax-highlighting  
- Support for both TS/Node/React stack *and* Python dev stack

---

## 🛠 Prerequisites  
- macOS (Zsh is default shell)  
- Homebrew installed — this will install Xcode command line tools — see [brew.sh](https://brew.sh/)  
- Oh My Zsh installed — see [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)

---

## 🧰 Setup  
**Warning**: If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### ✅ Installation Steps  
1. **Clone this repo**  
   ```bash
   git clone https://github.com/hefgi/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```  
2. **Install everything via Brewfile**  
   ```bash
   brew bundle --file=Brewfile
   ```  
3. **Symlink configuration files**  
   ```bash
   ln -s ~/dotfiles/.zshrc ~/.zshrc
   ln -s ~/dotfiles/.gitconfig ~/.gitconfig
   ln -s ~/dotfiles/.vimrc ~/.vimrc   
   ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
   ```  
4. **Configure Git**
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "you@example.com"
   ```

5. **Reload your shell**  
   ```bash
   source ~/.zshrc
   ```  
6. **Configure Powerlevel10k**  
   ```bash
   p10k configure
   ```  

7. **Install last stable Node Version**
   ```bash
   nvm install --lts 
   nvm alias default 'lts/*
   ```

### 🎨 Styling: Solarized everywhere  
I use the [Solarized](https://ethanschoonover.com/solarized/) Dark palette across tools for visual consistency.  
Set Solarized Dark in:  
- iTerm2 → Preferences → Profiles → Colors → Load Presets… → Solarized Dark  
- VS Code: Install this [package](https://marketplace.visualstudio.com/items?itemName=ryanolsonx.solarized) and select Solarized Dark  
- Vim: Follow installation instruction [here](https://github.com/altercation/vim-colors-solarized?tab=readme-ov-file#option-2-pathogen-installation-recommended)
- Sublime Text → Preferences → Color Scheme → Solarized Dark  
- Xcode → Preferences → Fonts & Colors → Solarized Dark

---

## 📚 Usage
### 🧪 Dev Env  

#### TypeScript / Node / React / React Native  
Use `nvm` for Node.js version management and Use `npm` and/or `yarn` for package management.  

#### Python  
Use `pyenv` to manage Python versions and use `pipenv` for virtual environments and dependencies.

#### AI
Claude Code and Cursor installed by default.

#### IDE
Use VSCode and Cursor as main IDEs. 
Use Xcode for iOS Development. 

#### Text Editors
Use Vim for terminal editing and Sublime Text for GUI editing. 

### 🔖 Aliases  
- `git logx` → prints a pretty, colored Git log graph with recent 20 commits.  
- `git tree` → shows a nice history tree view of the repository - good terminal alternative to GitX GUI
- `ll` → quick shortcut for `ls -la` to list all files in detail (use `eza` instead if installed).
- `python` → always invokes `python3` (from Homebrew) so you don’t have to type `python3`.  
- `pip` → always uses `pip3`, so you install packages for Python 3 by default.  

### 🛠 OPTIONAL: Tooling - cool stuff to use  
- `yazi` – fast terminal file manager with previews  
- `bat` – modern `cat` replacement with syntax highlighting, Git integration  
- `fzf` – fuzzy finder for files, history, Git branches  
- `eza` – modern `ls` replacement (icons, Git status)  
- `z` (or `zoxide`) – quickly jump between frequently used directories  
- `GitX` – macOS GUI Git client for visual source-control management - good GUI alternative to `git tree`

**Install everything via Brewfile**  
   ```bash
   brew bundle --file=Brewfile-cool-tools
   ```  
---

## ❤️ Acknowledgments  
- [iTerm2](https://github.com/gnachman/iTerm2) - Terminal
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) – Zsh configuration framework  
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) – Zsh prompt theme  
- [Solarized Dark theme](http://ethanschoonover.com/solarized) - Precision color palette
- Zsh plugin: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)

