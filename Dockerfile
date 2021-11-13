FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -yq --no-install-recommends  \
    make \
    texlive-full && \
    apt-get clean

VOLUME ["/data"]
WORKDIR /data

CMD [ "bash"]