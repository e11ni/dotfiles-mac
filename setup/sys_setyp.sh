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
pip3 install pylint pep8 rope

# Install Go
brew install golang

# Install some for vscode
brew install ctags
brew tap caskroom/fonts && brew cask install font-source-code-pro

# Install yadm:
brew install yadm

# Install vim plugin loader
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install tmux
brew install tmux
git clone https://github.com/gpakosz/.tmux.git .tmux_
mv .tmux/* .tmux_/
rm -rf .tmux
mv .tmux_ .tmux
ln -s -f .tmux/.tmux.conf

# Install console utils
brew install fzf fasd
brew install the_silver_searcher pandoc trash-cli jq httpie hub
brew install --ignore-dependencies trash-cli httpie # TODO: Works with python 3.7 only
npm install -g tldr how-2 doctoc
go get -u github.com/nishanths/license
brew install lnav knqyf263/pet/pet
go get -u github.com/gokcehan/lf
brew cask install clipy

# Install visual utils
brew cask install xquartz
brew install wireshark feh

# Install debug tools
brew install gdb htop ctop
brew install --HEAD valgrind

# Install Docker: https://runnable.com/docker/install-docker-on-macos
