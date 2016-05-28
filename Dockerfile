FROM alpine

MAINTAINER Sergej Jevsejev <sjevsejev@gmail.com>

ENV TERRAFORM_VERSION=0.6.15

ADD run.sh /run.sh

VOLUME ["/src"]

WORKDIR /src

RUN apk --update add \
    curl && \
    curl -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /usr/bin && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \

    apk del tzdata unzip curl && \
    rm -rf /var/cache/apk/* /tmp/*

ENTRYPOINT ["/run.sh"]

CMD ["--help"]
