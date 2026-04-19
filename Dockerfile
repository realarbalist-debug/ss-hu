FROM gojolvl99/gojo-8n1:latest

LABEL maintainer="Cxlvins"
LABEL description="Cloud Run Xray (Gojo 8-in-1)"
LABEL version="3.5"

WORKDIR /etc/xray

COPY config.json /etc/xray/config.json

EXPOSE 8080

ENV XRAY_LOGLEVEL=warning

ENTRYPOINT ["xray"]
CMD ["-config", "/etc/xray/config.json"]
