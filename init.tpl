#!/bin/bash

amazon-linux-extras install nginx1 -y

mkdir /etc/nginx/certs
cat << EOF > /etc/nginx/certs/server.key
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCwv38eJqcq8q9L
rkTAP+DRaejeC+eVFVsDMIbvKepewl7z80nBCQNNCFCb/EldqQ9eNr1hryro3Tqs
zBiGutvMJrlczvJa/TY0cganxeXRNg5vyiMN55H7rbqxF/4sdjDFdwWi+lc9hTKu
djr57f75kmmiYNJpXpUXEntXXsF6F3EDmmvqYxNUFdCELYjnNXnBSwPLfG6qwhf4
XUvuVLyhVnn1qota696wflhtLGX32prMLXuo68QGnJJmac2thG7az2dOkc791qmt
xO+wkGCHKDE2MgMBumCFHilXZp+S6DKrVqSzRYdAOANUkg+S01tgbxUpylpgECPD
aRVXrwDPAgMBAAECggEAbCeSOrn+WzqL5+yop1evU5XSaGWyfTjHK4l7WEg24Wth
PTgnbpb8TRwEb58OqeB0xfsLIgZVZI9Tgz+U1oTrUN51WQRNqz38+FS6G9nuSnog
lWmEz9JfMznY3ttGrqBYMc0mRteXoM6r97PjXOK0vrVILJPAzbeR1b96eDlEfVds
Agrrmv6DC0DSIlxOpqx9ZOuu3qEfRRk1dboZWElEnEulgy1TuR9mO0UMgSUrtP0V
eobW/N2BszXgmCXnaMadDKd+3AjxEkgvrKZRC9DcVKIVoh8ELLCl1ni6UWOTkGYk
8Tx6m9yKogH5v35s5JRym2vcRcYpY2zLfQClnceaSQKBgQDiCRLwfp5smUItckja
QZlS2OnzIq6Z5fFOarjJLWf7/eCjPlz9gXnDHp1RlanzHsTQtN8/yX91ES39+dxj
oKt9/gJdHSjxRXSJOOYe3amM/KIQw1v85xm3sOXtYsKCTaFGA88WXP47MY01O4lP
8YGLffS1lT8m8PCIE+MasUVsywKBgQDILcOft+xenBwgUhPCyyaayTHpOePCYftx
8hjgUkfvmuyBBjLLetWMbu8AdQAhD46w7FKy92PkK389++rqyHxXjz5Z5RBBU/L2
tYXtMqsgVq4s7vq6OXe7KWyBEDZcr2FONkNmUptkGCLzn65548OPPt1E+3aRdc/x
HJx25aCfjQKBgHyS0axXrEpf4NgZL0uSccT2JWHJkH7i+q3kJXlCnBeGYQK3ARr5
+7hsq/llyadjIsd/l7aY/7TuRfG+fhcuWrVyg6z7wC/QvpxODo2eTq6UIWGpuY3V
dBgH14CQOHEGBccHnF9P2xGWiqN274Nur53ISlC1M3vruDTW+QgiAQgnAoGBAMZh
NCEw8LrCEs2lCZheI5/6C9CKYkDdQYcm2ahVYpz996vWLLiivscxmQHm8X3SISMM
0Ngze3c/9BXFdoW+shtEBhKog3d6bqo4MsVjFVwzCuHU4/1xvkppPvKY0ob/93q/
JARfkUec8+ZkNVDue3uWXUpjupllG/Ji3FyoLIpxAoGAJeqNEPDqkAhldVR6oTxA
GoE+194DwYC5uszOPqiOewjp7yrg4xa/DGK5K37KbXKvy3OgCYVGMg0FrBjT5WUu
N7nDFUbzDe0JY4bcBkSgwtBfybqRgBNmT+pAivEExczmtoACksVakzNtNdCcogK7
YRU6eZvu3xWVWPKicIuluQU=
-----END PRIVATE KEY-----
EOF

cat << EOF > /etc/nginx/certs/server.cert
-----BEGIN CERTIFICATE-----
MIIC7jCCAdYCCQDvOGNMRRkwbjANBgkqhkiG9w0BAQsFADA5MQswCQYDVQQGEwJV
UzELMAkGA1UECAwCQVoxEDAOBgNVBAcMB3ZpZ2luaWExCzAJBgNVBAoMAmV4MB4X
DTIwMTIwMjE3NDk0NloXDTIxMTIwMjE3NDk0NlowOTELMAkGA1UEBhMCVVMxCzAJ
BgNVBAgMAkFaMRAwDgYDVQQHDAd2aWdpbmlhMQswCQYDVQQKDAJleDCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBALC/fx4mpyryr0uuRMA/4NFp6N4L55UV
WwMwhu8p6l7CXvPzScEJA00IUJv8SV2pD142vWGvKujdOqzMGIa628wmuVzO8lr9
NjRyBqfF5dE2Dm/KIw3nkfuturEX/ix2MMV3BaL6Vz2FMq52Ovnt/vmSaaJg0mle
lRcSe1dewXoXcQOaa+pjE1QV0IQtiOc1ecFLA8t8bqrCF/hdS+5UvKFWefWqi1rr
3rB+WG0sZffamswte6jrxAackmZpza2EbtrPZ06Rzv3Wqa3E77CQYIcoMTYyAwG6
YIUeKVdmn5LoMqtWpLNFh0A4A1SSD5LTW2BvFSnKWmAQI8NpFVevAM8CAwEAATAN
BgkqhkiG9w0BAQsFAAOCAQEAofNDtVpnjMxo94koeX6pv4k4RWc78Muv0DW245FX
x7TezKW9nhGGWi53ubXuAaxWHl9s1PfJC2t4Tn6ZeM9+ucIeHWedSjzngi1Qx4Rm
MxGUdUiU8r8Q0uYnC3jvot45zHfLI1sjY7rDP4n/X859IhsYMsH9ZR/c9ajGIJQo
6vgITBFkiar3fuCYWvQJhJNxdNeWXKn3mXOQS7eNWMqrCbGqP/+3j2g/4vzrS2GN
/XxNeuioyKwrV5szwVsaG7MWu5PZ/+Od51ZuPMOrwy5jQg/ic1KgZCNtp2lbtJjg
IztfS81DC+soCYiqQrLx0J4yiX1wK78enjRV5HNvOO1h8Q==
-----END CERTIFICATE-----
EOF

mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.back

cat << EOF > /etc/nginx/nginx.conf
# For more information on configuration, see:
#   * Official English Documentation: http://nginx.org/en/docs/
#   * Official Russian Documentation: http://nginx.org/ru/docs/

user nginx;
worker_processes auto;
error_log /var/log/nginx/error.log;
pid /run/nginx.pid;

# Load dynamic modules. See /usr/share/doc/nginx/README.dynamic.
include /usr/share/nginx/modules/*.conf;

events {
    worker_connections 1024;
}

http {
    log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for"';

    access_log  /var/log/nginx/access.log  main;

    sendfile            on;
    tcp_nopush          on;
    tcp_nodelay         on;
    keepalive_timeout   65;
    types_hash_max_size 4096;

    include             /etc/nginx/mime.types;
    default_type        application/octet-stream;

    # Load modular configuration files from the /etc/nginx/conf.d directory.
    # See http://nginx.org/en/docs/ngx_core_module.html#include
    # for more information.
    include /etc/nginx/conf.d/*.conf;


# Settings for a TLS enabled server.

    server {
        listen       443 ssl http2;
        listen       [::]:443 ssl http2;
        server_name  _;
        root         /usr/share/nginx/html;

        ssl_certificate "/etc/nginx/certs/server.cert";
        ssl_certificate_key "/etc/nginx/certs/server.key";
        ssl_session_cache shared:SSL:1m;
        ssl_session_timeout  10m;
 #       ssl_ciphers PROFILE=SYSTEM;
 #       ssl_prefer_server_ciphers on;

        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;

        error_page 404 /404.html;
            location = /40x.html {
        }

        error_page 500 502 503 504 /50x.html;
            location = /50x.html {
        }
    }

}
EOF


service nginx start
