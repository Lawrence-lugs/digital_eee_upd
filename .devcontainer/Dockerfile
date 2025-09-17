FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
        gdebi-core \
        ca-certificates \
        curl \
        git \
        build-essential \
        libssl-dev \
        libcurl4-openssl-dev \
        libxml2-dev \
        python3 \
        python3-pip \
        r-base \
        && rm -rf /var/lib/apt/lists/*

# Install Quarto
RUN wget -q https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    gdebi -n quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb

# Verify installation
RUN quarto --version

CMD ["/bin/bash"]