# LMS-BubbleUPNP Server
In LMS, Active plugin Remote Music Libraries.

In Setting Remote Music Libraries, UPnP/DLNA Client, choose: Enabled, look for other UPnP/DLNA media servers.

SSH Putty command:
> 
BubbleUPnP Tether Client
> wget -O - https://raw.githubusercontent.com/lovehifi/lmsbub/main/install-archlinux.sh | sh
>
WinSCP edit file: /opt/upnp/bupnp.service

Add username, pass, URL server

SSH Putty command:
>
> sudo systemctl daemon-reload
>
> sudo systemctl restart bupnp.service
>
> sudo systemctl status bupnp.service
>

BubbleUPNP Server (tether)
![Screenshot](Screenshot.png)
