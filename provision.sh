
#yum install rpm-build -y
#yum install rpmdevtools rpmlint -y
#yum install java7 -y
#
# The rpmsetuptree does the below
#
#mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
#echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros
#
#rpmdev-setuptree

yum install git -y
#yum install npm -y
yum groupinstall -y development
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm reload
rvm install 2.1.1 
rvm use 2.1.1 --default
gem install bundler
gem update --system

git clone https://github.com/nickethier/grokdebug.git
cd grokdebug


gem update
bundle update

echo "source /home/vagrant/shared/gitprofile" >> /root/.bashrc
echo "source /home/vagrant/shared/gitprofile" >> /home/vagrant/.bashrc


chown -R vagrant.vagrant /home/vagrant
chown -R vagrant.vagrant /usr/local/rvm

nohup rackup -p 80 >> /dev/null 2>> /dev/null  &
