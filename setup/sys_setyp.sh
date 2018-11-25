# Install iTerm2: https://www.iterm2.com/downloads.html
# Install VSCode and sync settings: https://code.visualstudio.com/docs/setup/mac

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install source control tools (svn + git)
brew install svn
brew install git

# Generate ssh keys (For work only)
mkdir .ssh
cd .ssh/
ssh-keygen -t rsa -b 2048 -C petrmali@yandex-team.ru
cat id_rsa.pub 

# Install npm
brew install npm

# Install jshint
npm install -g jshint

# Install Python and linters
brew install python3
# Install Python36 instead
# brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
pip3 install --upgrade pip
pip3 install pylint
pip3 install pep8
pip3 install rope

# Install some for vscode
brew install ctags
brew tap caskroom/fonts && brew cask install font-source-code-pro

# Install yadm:
brew install yadm
