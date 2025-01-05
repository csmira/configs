#!/bin/sh

# Macos already comes with a pre-installed version of curl
if ! [ -x "$(command -v brew)" ]; then
    echo "Homebrew is needed to install required dependencies"
    echo "Do you want to install homebrew? (yes or no)"
    read user_response

    if [ "$user_response" == "yes" ]; then
        echo "Installing homebrew..."
        /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Exiting setup"
        exit 0
    fi
fi

# Installing aerospace and fzf
brew install --cask nikitabobko/tap/aerospace
brew install fzf

# Installing fonts
cd ~/Library/Fonts
curl -fLo "Roboto Mono Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/RobotoMono/Regular/complete/Roboto%20Mono%20Nerd%20Font%20Complete.ttf
curl -fLo "Symbols-1000-em Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-1000-em%20Nerd%20Font%20Complete%20Mono.ttf
curl -fLo "Symbols-2048-em Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-2048-em%20Nerd%20Font%20Complete%20Mono.ttf

# Installing kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Install dependencies for nvim/lazy-vim
brew install ripgrep

# Install nvim
brew install neovim

echo "Finished setting up configs"
