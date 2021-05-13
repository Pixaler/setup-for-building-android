sudo apt update
sudo apt upgrade

apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip
#necessary package

openjdk-8-jdk #java

pyhton-is-python2 #for repo

python3-virtualenv #for creating virtual enviroment Python 2.7

libncurses5 #library for building android

imagemagick #imagemagick for building android

#installing repo and rbuild
mkdir ~/bin
export PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
curl https://raw.githubusercontent.com/meizucustoms/rbuild/main/rbuild > ~/bin/rbuild
chmod +x ~/bin/rbuild
chmod a+x ~/bin/repo

virtualenv --python=/usr/bin/python2.7 ~/venv #create virual enviroment Python 2.7
#virtualenv2 --system-site-packages venv

#working di
mkdir lineage15.1
cd lineage15.1
#auth in git
git config --global user.name Vladimir Gnidko
git config --global user.email gnidko02@gmail.com

#working with repo
repo init 
mkdir -p .repo/local_manifests
curl https://raw.githubusercontent.com/meizucustoms/local_manifest/master/mzlocal_nougat.xml > .repo/local_manifests/mz.xml
repo sync -c -j $(nproc) --no-tags






