# Stage 1: Build Environment
FROM mambaorg/micromamba:latest AS builder
USER root

RUN apt-get update && apt-get install -y curl jq

RUN QUARTO_URL=$(curl -s https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest | jq -r '.assets[] | select(.name | endswith("linux-amd64.deb")) | .browser_download_url') && \
    curl -L "$QUARTO_URL" -o quarto.deb && \
    dpkg -i quarto.deb && \
    rm quarto.deb

COPY --chown=$MAMBA_USER:$MAMBA_USER env.yml /tmp/env.yml
RUN micromamba install -y -n base -f /tmp/env.yml && \
    micromamba clean --all --yes

WORKDIR /app
COPY . .

# Render the site using the mamba environment
RUN eval "$(micromamba shell hook --shell bash)" && \
    micromamba activate base && \
    quarto render

# Minimal Web Server
FROM nginx:alpine
COPY --from=builder /app/_site /usr/share/nginx/html
EXPOSE 80