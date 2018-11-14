FROM xbrowsersync/api

COPY entrypoint.sh /entrypoint.sh

VOLUME ["/usr/src/xbrowser-api/config", "/var/log/xBrowserSync/"]

CMD ["/bin/bash", "/entrypoint.sh"]
