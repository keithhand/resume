ARG TEXLIVE_LATEX_EXTRA=2022.20230122-4
ARG TEXLIVE_LUATEX=2022.20230122-3
ARG LATEXMK=1:4.79-1
ARG FONTS_CARLITO=20220224-1

FROM debian:12.6-slim
ARG TEXLIVE_LATEX_EXTRA
ARG TEXLIVE_LUATEX
ARG LATEXMK
# Install Latex
RUN apt-get update && apt-get -y install --no-install-recommends \
    texlive-luatex=${TEXLIVE_LUATEX} \
    latexmk=${LATEXMK} \
    texlive-latex-extra=${TEXLIVE_LATEX_EXTRA} \
    && rm -rf /var/lib/apt/lists/*

ARG FONTS_CARLITO
# Install fonts
RUN apt-get update && apt-get -y install --no-install-recommends \
    fonts-crosextra-carlito=${FONTS_CARLITO} \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY docker/bin /usr/local/bin
COPY latex .

ENTRYPOINT ["entrypoint.sh"]
