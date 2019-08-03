#!/bin/bash
COL='\033[1;33m'
NC='\033[0m'
sudo echo -e "${COL}Starting...${NC}"
echo
echo
cp iploc.pl ../iploc.pl
cd ..
chmod +x iploc.pl
sudo apt-get install -y cpan
sudo apt-get install -y liblocal-lib-perl
sudo apt-get install -y libjson-perl
sudo cpan install -y YAML
sudo cpan install -y WWW::Mechanize
sudo echo 'alias aboutip="perl iploc.pl"' >> ~/.bashrc
. ~/.bashrc
echo  
echo  
echo -e "${COL} OK! Untuk RUN ketik : aboutip [ip or domain]${NC}"
echo
echo 
rm -r ./perliploc
exec bash
