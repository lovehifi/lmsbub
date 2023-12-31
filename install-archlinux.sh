#!/bin/sh

cd ~
echo "Install Java jre-openjdk-headless"
sudo pacman -S --noconfirm jre-openjdk
echo "Unzip"
sudo pacman -S --noconfirm unzip
echo "Download BubbleUPnPTetherClient"
wget https://bubblesoftapps.com/bubbleupnptetherclient/BubbleUPnPTetherClient-0.9.2.zip
sudo unzip BubbleUPnPTetherClient-0.9.2.zip -d /opt/upnp

echo "755"
cd /opt/upnp
sudo chmod -R 755 /opt/upnp/launch.sh


echo "Creating systemd unit /etc/systemd/system/bupnp.service"
echo "[Unit]
Description=BUPnP DLNA/UPnP-AV server
After=network.target

[Service]
Type=simple
WorkingDirectory=/opt/upnp
ExecStart=/opt/upnp/launch.sh -connect http://honddpy.ddns.net:58050 -login admin -password foobar2000
Restart=always

[Install]
WantedBy=multi-user.target" > /opt/upnp/bupnp.service || { echo "Creating systemd unit /etc/systemd/system/bupnp.service failed"; exit 1; }
sudo ln -fs /opt/upnp/bupnp.service /etc/systemd/system/bupnp.service
sudo chmod -R 777 /etc/systemd/system/bupnp.service
sudo systemctl daemon-reload
sudo systemctl enable bupnp.service
sudo systemctl restart bupnp.service
#sudo systemctl status bupnp.service

# wget -O - https://raw.githubusercontent.com/lovehifi/lmsbub/main/install-archlinux.sh | sh
