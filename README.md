# LMS-BubbleUPNP Server (for ArchLinux: rAudio...)

1./ In LMS (Logitech Media Server) activate the "Remote Music Libraries" plugin. In the "Remote Music Libraries" settings, navigate to "UPnP/DLNA Client" and select "Enabled". This will allow you to discover other UPnP/DLNA media servers.
> 
------------------------
2./ Install package: Java runtime, Unzip, BubbleUPnP Tether Client, SSH Putty command:
> wget -O - https://raw.githubusercontent.com/lovehifi/lmsbub/main/install-archlinux.sh | sh
>
------------------------
3. WinSCP edit config: /opt/upnp/bupnp.service
Add username, pass, URL server

------------------------
4. Run bupnp.service, SSH Putty command:
>
> sudo systemctl daemon-reload
>
> sudo systemctl restart bupnp.service
>
> sudo systemctl status bupnp.service
>

BubbleUPNP Server (tether)
![Screenshot](Screenshot.png)
