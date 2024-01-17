# Install iTerm2: https://www.iterm2.com/downloads.html
# Install VSCode and sync settings: https://code.visualstudio.com/docs/setup/mac

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install source control tools (git)
brew install git

# Generate ssh keys (For work only)
mkdir .ssh
cd .ssh/
ssh-keygen -t rsa -b 2048 -C petr.maliarov@gmail.com
cat id_rsa.pub

# Install npm
brew install npm

# Install jshint
npm install -g jshint

# Install Python and linters
brew install python3

# brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
pip3 install --upgrade pip
pip3 install pylint flake8 pep8 rope

# Install Go
brew install golang

# Install some for vscode
brew install ctags
brew tap caskroom/fonts && brew cask install font-source-code-pro

# Install vim plugin loader
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Do not forget run this command inside vim: PlugUpdate

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install console utils
brew install fzf jq
$(brew --prefix)/opt/fzf/install

brew install --cask maccy
npm install -g tldr how-2

# Install visual utils
brew cask install xquartz
brew install wireshark feh

brew install htop ctop
