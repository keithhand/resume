FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
    texlive-latex-extra

RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
    latexmk make

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
ENTRYPOINT ["./bin/entrypoint.sh"]
