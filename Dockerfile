FROM alpine:3.4

RUN apk -U add bash curl

ENV ENVCONSUL_VERSION 0.6.1

ADD https://releases.hashicorp.com/envconsul/${ENVCONSUL_VERSION}/envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip /tmp/

RUN cd /tmp && \
    unzip envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip && \
    mv envconsul /bin/envconsul && \
    rm -rf /tmp

CMD ["/bin/envconsul"]
