FROM t42x/awxkit_base:21.11.0

RUN apk update \
  && apk upgrade \
  && apk add jq \
  && apk add bash \
  && rm -rf /var/cache/*/*


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
