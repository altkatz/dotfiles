sudo apt-get install -y git
sudo apt-get install -y curl
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg
sudo apt-get install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# js setup
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.101.

npm install -g jshint

# python setup
sudo curl -O http://python-distribute.org/distribute_setup.py | python
sudo curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
sudo pip install virtualenv

sudo pip install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# ruby setup
curl -L https://get.rvm.io | bash -s stable --ruby
gem install pry

# sql
sudo apt-get install libpq-dev postgresql-client postgresql
