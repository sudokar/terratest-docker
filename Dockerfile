FROM golang:alpine
LABEL Author="sudokar <sudokar@yahoo.com>"

ENV TERRAFORM_VERSION=0.12.4
ENV AWSWEEPER_VERSION=0.3.2

RUN apk add --update --no-cache wget git gcc musl-dev && \
  wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform*.zip -d /usr/local/bin/ && \
  chmod +x /usr/local/bin/terraform && \
  rm terraform*.zip

RUN go get github.com/gruntwork-io/terratest/modules/terraform && \
  go get github.com/stretchr/testify/assert

RUN wget -q https://github.com/cloudetc/awsweeper/releases/download/v${AWSWEEPER_VERSION}/awsweeper_${AWSWEEPER_VERSION}_linux_amd64.tar.gz && \
  tar -xf awsweeper_*.tar.gz -C /usr/local/bin/ && \
  chmod +x /usr/local/bin/awsweeper && \
  rm awsweeper_*.tar.gz
