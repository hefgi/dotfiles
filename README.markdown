This repo contains all the config file of my classic setup : [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) using [Powerlevel9k](https://github.com/bhilburn/powerlevel9k).

All tools (iTerm, Vim, Xcode, Sublime Text...) used [Solarized Dark theme](http://ethanschoonover.com/solarized)

See commit history in the terminal using `git tree`

## Getting Started

### Prerequisites
* Mac OS X
* `git` should be installed
* [Xcode](https://developer.apple.com/xcode/) Command Line Tools are needed
* [Homebrew](http://brew.sh) should be installed
* [iTerm 2](https://www.iterm2.com) because the Awesome Powerline fonts don't work on the classic Terminal mac app

### Basic installation

#### 1. Install ZSH
Follow this process : [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

#### 2. Install Oh-My-Zsh
```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### 3. Install Powerleve9k Theme for Oh-My-Zsh
```shell
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

#### 4. Install Awesome Powerline Fonts using patching strategy
Clone the [Awesome Powerline Fonts](https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy) git directory on the patching stregy branch and install manually all the font from the `./patched` directory

#### 5. Install Solarized theme
[Download here](http://ethanschoonover.com/solarized/files/solarized.zip) or `git clone` from [directory](https://github.com/altercation/solarized)
* Install it manually for iTerm2 (Preferences etc...) and choose one of the awesome powerline fonts you just installed.
* For Vim
  1. [Pathogen](https://github.com/tpope/vim-pathogen) installation
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
  2. Clone [Solarized for Vim](https://github.com/altercation/vim-colors-solarized) 
```shell
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
```
* For Xcode
  1. Install [Alcatraz](https://github.com/alcatraz/Alcatraz) package manager
  2. Choose [Solarized Dark for Xcode](https://github.com/ArtSabintsev/Solarized-Dark-for-Xcode/) theme

#### 6. Clone the repository into your home folder
```shell
cd ~
git init
git remote add origin https://github.com/hefgi/hefgi-config.git
git pull origin master
```
