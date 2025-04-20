FROM alpine:latest

RUN apk update && apk add --no-cache curl unzip

RUN curl -L -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray.zip -d /v2ray && \
    chmod +x /v2ray/v2ray /v2ray/v2ctl

COPY config.json /etc/v2ray/config.json

CMD ["/v2ray/v2ray", "-config=/etc/v2ray/config.json"]
