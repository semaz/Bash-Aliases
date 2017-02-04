#!/bin/sh

SCRIPTS_PATH=$(dirname "${BASH_SOURCE}")

source ~/$SCRIPTS_PATH/1.term.sh;
source ~/$SCRIPTS_PATH/2.functions.sh;

install_app () {
    if ! command_exists $1; then
        $2
    fi;
}

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/dupes

# bash-completion
brew install bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose.bash-completion

# Wget
install_app "wget" "brew install wget";

# Curl
install_app "curl" "brew install curl";

# node
install_app "node" "brew install node --with-full-icu";

instbash 'if which rbenv > /dev/null; then eval "$(rbenv init -)"' "Node init";

# babel
npm install babel-cli
npm install babel-preset-es2015 --save --no-bin-links
npm install babel-preset-minify
npm install babel-preset-babili

# yuicompressor
brew install yuicompressor

# Multitail
install_app "multitail" "brew install multitail";

# Nano
brew install nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# Composer
install_app "composer" "curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer";

exec bash -l;