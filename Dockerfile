FROM v2fly/v2fly-core

COPY config.json /etc/v2ray/config.json
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
