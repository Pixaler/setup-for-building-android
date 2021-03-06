#I create this script with Kubuntu 21.04
#But you can try on another distro
#update system
sudo apt update
sudo apt upgrade

#package and java
sudo apt install ccache git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig imagemagick virtualenv openjdk-8-jdk python2 libncurses5 python-is-python2
 
#installing repo and rbuild
mkdir ~/bin
export PATH=~/bin:$PATH #add to .bashrc or .zschrc
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
curl https://raw.githubusercontent.com/meizucustoms/rbuild/main/rbuild > ~/bin/rbuild #i prefer rbuild script for building android
chmod +x ~/bin/rbuild
chmod a+x ~/bin/repo

virtualenv --python=/usr/bin/python2.7 ~/venv #create virual enviroment Python 2.7

#working dir
mkdir lineage15.1
cd lineage15.1
#auth in git
git config --global user.name Vladimir Gnidko
git config --global user.email gnidko02@gmail.com

#working with repo
repo init -u git://github.com/LineageOS/android.git -b lineage-15.1
mkdir -p .repo/local_manifests
curl https://raw.githubusercontent.com/Pixaler/local_manifest/master/m1721-rebase.xml > .repo/local_manifests/mz.xml
#repo sync -c -j $(nproc) --no-tags

#When Jack diagnose gives error 35 (SSL error) LINK:https://stackoverflow.com/questions/67364721/error-in-building-android-image-fails-with-jack-server
#Edit java.security file under /etc/java-8-openjdk/security/
#Remove TLSv1, TLSv1.1 from jdk.tls.disabledAlgorithms
#Restart the jack server:
   #cd <aosp-home-dir>/prebuilts/sdk/tools/
   #./jack-admin kill-server
   #./jack-admin start-server



