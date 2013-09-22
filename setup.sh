sudo apt-get install -y git-core
sudo apt-get install -y curl
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg
cd ~
sudo apt-get install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
sudo chsh -s /bin/zsh

# js setup
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.101.

npm install -g jshint

# python setup
cd ~/
sudo curl -O http://python-distribute.org/distribute_setup.py
sudo python distribute_setup.py
sudo curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv

sudo pip install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# ruby setup
curl -L https://get.rvm.io | bash -s stable --ruby
gem install pry

# redis
cd ~
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
sudo cp src/redis-server /usr/local/bin/
sudo cp src/redis-cli /usr/local/bin/

# sql
sudo apt-get install -y libpq-dev postgresql-client postgresql
#sudo -u postgres psql postgres
#sudo -u postgres createdb mydb
#adduser news_pg
#sudo -u postgres createuser news_pg
#sudo -u postgres createdb -O news_pg news_test
