FROM alpine:latest

EXPOSE 8118 9050

RUN apk --no-cache add privoxy tor runit tini

COPY service /etc/service/

RUN mkdir /tmp/tor

RUN chown -R 65000:65000 /etc/service /tmp/tor

USER 65000:65000

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "-P", "/etc/service"]
