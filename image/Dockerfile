FROM itzg/minecraft-server:2021.21.0-java16

ADD https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-linux-amd64 entrypoint.sh pause.sh /
# COPY auth.json ~/.config/dbxcli/auth.json
RUN install /dbxcli-linux-amd64 /usr/local/bin/dbxcli; \
    rm /dbxcli-linux-amd64; \
    mv /pause.sh /autopause; \
    apt update && apt install unzip

ENTRYPOINT ["/entrypoint.sh"]
