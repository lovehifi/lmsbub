# LMS-BubbleUPNP Server
In LMS, Active plugin Remote Music Libraries.

In Setting Remote Music Libraries, UPnP/DLNA Client, choose: Enabled, look for other UPnP/DLNA media servers.

> 
> wget -O - https://raw.githubusercontent.com/lovehifi/lmsbub/main/install-archlinux.sh | sh
>
WinSCP Edit file /opt/upnp/bupnp.service

Add username, pass, URL server

>
> sudo systemctl daemon-reload
>
> sudo systemctl restart bupnp.service
>
> sudo systemctl status bupnp.service
>
