#[13-15.03.2021] I create this script with Kubuntu 21.04
#[25.02.23] Update and test on WSL Ubuntu 22.04.2 LTS
#update system
sudo apt update && sudo apt upgrade -y

#package and java
sudo apt install ccache git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig imagemagick libncurses5 -y
# Python2 to for old android 
# sudo apt install virtualenv python2 python2-pip-whl python2-setuptools-whl
# Java for old android
# sudo apt install openjdk-8-jdk
 
#installing repo and rbuild
mkdir ~/bin
echo "export PATH=~/bin:/usr/bin" >> ~/.bashrc
source ~/.bashrc
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
curl https://raw.githubusercontent.com/meizucustoms/rbuild/main/rbuild > ~/bin/rbuild #I prefer rbuild script for building android
chmod +x ~/bin/rbuild
chmod a+x ~/bin/repo


# For android 9 and lower
# To set python-is-python2
# virtualenv --python=/usr/bin/python2.7 ~/venv #create virual enviroment Python 2.7
#	alias python='/usr/bin/python2.7'
#	. ~/.bashrc

#working dir
mkdir lineage18.1
cd lineage18.1
#auth in git
git config --global user.name Vladimir Gnidko
git config --global user.email gnidko02@gmail.com

#working with repo
repo init -u https://github.com/LineageOS/android.git -b lineage-18.1
mkdir -p .repo/local_manifests
curl https://raw.githubusercontent.com/meizucustoms/local_manifest/master/mzlocal_r.xml > .repo/local_manifests/mz.xml
#repo sync -c -j $(nproc) --no-tags


#When Jack diagnose gives error 35 (SSL error) LINK:https://stackoverflow.com/questions/67364721/error-in-building-android-image-fails-with-jack-server
#Edit java.security file under /etc/java-8-openjdk/security/
#Remove TLSv1, TLSv1.1 from jdk.tls.disabledAlgorithms
#Restart the jack server:
   #cd <aosp-home-dir>/prebuilts/sdk/tools/
   #./jack-admin kill-server
   #./jack-admin start-server



