FROM google/cloud-sdk:alpine
LABEL maintainer="Kariuki Gathitu <kgathi2@gmail.com>"
LABEL version="1.0"

RUN gcloud components install kubectl
RUN mkdir app
WORKDIR /app
COPY ./entrypoint.sh bash_aliases /tmp/
RUN  . /tmp/bash_aliases
RUN chmod +x /tmp/bash_aliases /tmp/entrypoint.sh

ENTRYPOINT [ "/tmp/entrypoint.sh" ]