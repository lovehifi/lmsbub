# LMS-BubbleUPNP Server
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
