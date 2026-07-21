FROM alpine:3.19

RUN apk add --no-cache \
    curl \
    bash \
    ca-certificates \
    socat \
    tzdata \
    sqlite \
    && ln -sf /usr/share/zoneinfo/Asia/Tehran /etc/localtime

# نصب X-UI Engine (نسخه شخصی‌سازی‌شده GUCCI v3.4.2)
RUN curl -L -o /tmp/x-ui.tar.gz "https://github.com/ArcticFlow4968G/GUCCI-3xui/releases/download/v3.4.2/x-ui-linux-amd64.tar.gz" \
    || curl -L -o /tmp/x-ui.tar.gz "https://raw.githubusercontent.com/ArcticFlow4968G/GUCCI-3xui/main/assets/x-ui-linux-amd64.tar.gz"

RUN tar -xzf /tmp/x-ui.tar.gz -C /usr/local/ \
    && rm /tmp/x-ui.tar.gz \
    && chmod +x /usr/local/x-ui/x-ui

RUN mkdir -p /etc/x-ui /var/log/x-ui

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE ${PORT:-2053}

CMD ["/start.sh"]
