wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

#Add the Grafana repository to your APT sources
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

#Refresh your APT cache to update your package lists
sudo apt update

sudo apt install grafana

sudo systemctl start grafana-server

sudo systemctl status grafana-server
