# Greeting at Terminal launch
autoload -U colors && colors

function say_greeting {
  print

  # Emojis based on hour
  local hour=$(date +%H)
  local emoji greeting_word
  if (( hour < 12 )); then
    greeting_word="Bonjour"
    emoji="🥐"
  elif (( hour < 18 )); then
    greeting_word="Bonjour"
    emoji="☕️"
  else
    greeting_word="Bonsoir"
    emoji="💡"
  fi

  print -P "%F{cyan}${emoji} ${greeting_word} $USER!%f"

  # Quotes array
  local quotes=(
    "🧠 Code like the wind."
    "🚀 Keep pushing pixels and boundaries."
    "🔥 Ship fast, fix things later."
    "🌱 Stay curious, keep growing."
    "💡 Think twice, code once."
    "✨ Make it simple, make it elegant."
    "🔥 Errors are lessons in disguise."
    "🚀 Speed matters — but readability wins."
    "👁️ Write for humans, not just machines."
    "🌱 Refactor often, grow continuously."
    "🚫 Mistakes aren’t the end, they're the start."
    "❌ Fail fast, grow faster."
  )
  local idx=$(( RANDOM % ${#quotes[@]} ))
  local quote=${quotes[$idx]}

  # Print the quote
  print -P "%F{cyan}$quote%f"
  print
}

say_greeting

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----- Paths & initial setup -----
#FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ----- NVM -----
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ----- Oh My Zsh -----
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# ----- Powerlevel10k (Homebrew) -----
source $(brew --prefix powerlevel10k)/share/powerlevel10k/powerlevel10k.zsh-theme

# ----- OMZ Plugins -----
plugins=(
  git
  gitfast
  brew
  z
  command-not-found
  colored-man-pages
  vscode
  sublime
  react-native
  postgres
  nvm
  npm
  node
  iterm2
  gcloud
  dotenv
  docker
  docker-compose
  aws
  yarn
  fzf
  eza
  python
  pyenv
  pip
  pipenv
)

# ----- External plugins from Brew -----
# Load manually since they're not inside OMZ's plugin folders
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# ----- User configuration -----
alias ll='ls -la'

# Use Homebrew python instead of macos
alias python=python3
alias pip=pip3

# If eza (modern ls) exists, use it for directory listing
EZAPATH=$(command -v eza)
if [[ -n $EZAPATH ]]; then
  LS_FLAGS="--all --group-directories-first --time-style=long-iso --sort=name --icons=always"
  alias ls="eza ${LS_FLAGS} --across"
  alias ll="eza ${LS_FLAGS} --long --group --header --binary --created --modified --git --classify"
  alias l="ls"
  alias tree="ll --tree"
fi

# If bat (modern cat) exists, use it for file viewing
BATPATH=$(command -v bat)
if [[ -n $BATPATH ]]; then
  alias cat="bat --paging=never"
fi

# If Yazi is available, use it for File Mgt
YAZIPATH=$(command -v yazi)
if [[ -n $YAZIPATH ]]; then
  # override 'open' for directories
  function open() {
    if [[ -d $1 ]]; then
      # argument is a directory → open with Yazi
      yazi "$1"
    else
      # argument is a file → pass to macOS open
      /usr/bin/open "$1"
    fi
  }
fi

# Lock the screen
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# ----- Sublime text -----
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh