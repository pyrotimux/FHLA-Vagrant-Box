#sudo apt-get -y update && upgrade

ps_container="workspace"
ps_fhla_path="~/$ps_container/usr/hla"

echo "export PATH=$PATH:$ps_fhla_path" >> .bashrc
echo "export hlalib=$ps_fhla_path/hlalib" >> .bashrc
echo "export hlainc=$ps_fhla_path/include" >> .bashrc
source .bashrc

mkdir $ps_container
cd $ps_container
wget http://www.plantation-productions.com/Webster/HighLevelAsm/HLAv2.16/linux.hla.tar.gz
tar xvf linux.hla.tar.gz
rm linux.hla.tar.gz
cd ..
chown -R vagrant $ps_container

