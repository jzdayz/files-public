#!/bin/bash
yum install -y wget 

wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u242-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u242b08.tar.gz -O openJdk8.tar.gz

mkdir openJdk8

tar -zxvf openJdk8.tar.gz -C openJdk8 --strip-components 1

rm -f openJdk8.tar.gz

work_path=$(pwd)

echo $work_path

echo 'export JAVA_HOME='$work_path'/openJdk8' >> ~/.bash_profile
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile
echo $JAVA_HOME
java -version

wget https://github.com/halo-dev/halo/releases/download/v1.2.0/halo-1.2.0.jar -O halo.jar

nohup java -jar halo.jar --server.port=80 > halo.out & 

echo 'done'

yum install xz

wget https://github.com/trojan-gfw/trojan/releases/download/v1.14.1/trojan-1.14.1-linux-amd64.tar.xz -O trojan.tar.xz

xz -d trojan.tar.xz

tar -xvf trojan.tar

wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

