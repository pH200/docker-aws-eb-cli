FROM python:3.10-alpine

LABEL maintainer="ph200" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.description="The AWS Elastic Beanstalk Command Line Interface (EB CLI)." \
      org.label-schema.docker.cmd="docker run -v \${HOME}/.aws:/root/.aws -it ph200/aws-eb-cli"

RUN apk add --no-cache bash openssh ca-certificates jq curl perl git zip \
 && apk add --no-cache bash-completion \
 && update-ca-certificates

ENV PATH=/root/.local/bin:$PATH
RUN pip install awsebcli --quiet --no-cache-dir --upgrade --user

WORKDIR /app
CMD bash
