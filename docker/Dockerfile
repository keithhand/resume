FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
    texlive-latex-extra

RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
    texlive-luatex

RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
    latexmk

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY docker/bin /usr/local/bin
COPY latex .

ENTRYPOINT ["entrypoint.sh"]
