# LMS-BubbleUPNP Server

1./ In LMS, Active plugin Remote Music Libraries.
In Setting Remote Music Libraries, UPnP/DLNA Client, choose: Enabled, look for other UPnP/DLNA media servers.
> 
------------------------
2./ Install Java runtime, Unzip, BubbleUPnP Tether Client, SSH Putty command:
> wget -O - https://raw.githubusercontent.com/lovehifi/lmsbub/main/install-archlinux.sh | sh
>
------------------------
3. WinSCP edit config file: /opt/upnp/bupnp.service
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
