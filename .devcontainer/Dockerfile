# Start with official Ubuntu 22.04
FROM ubuntu:22.04

# Avoid prompts from apt during build
ENV DEBIAN_FRONTEND=noninteractive

# 1. Setup Repositories & Install Basic Tools
# We install software-properties-common first to get 'add-apt-repository'
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    # Enable multiverse for Microsoft Fonts
    && add-apt-repository multiverse \
    && apt-get update 

# 2. Install TeX Live
RUN apt-get install -y \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    texlive-xetex \
    # ttf-mscorefonts-installer \
    # fontconfig \
    # Refresh font cache immediately
    # && fc-cache -f -v \
    r-base \
    libmagick++-dev \
    libcurl4-openssl-dev \
    # Need libmagick for R 
    xclip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apt update && apt install -y \
    git \
    libnss3 \
    libgbm1 \
    libasound2

# 3. Install Quarto
ARG QUARTO_VER="1.4.555"
RUN set -eux; \
    ARCH="$(dpkg --print-architecture)"; \
    case "$ARCH" in \
      amd64|arm64) ;; \
      *) echo "Unsupported architecture for Quarto package: $ARCH"; exit 1 ;; \
    esac; \
    DEB_FILE="quarto-${QUARTO_VER}-linux-${ARCH}.deb"; \
    curl -LO "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VER}/${DEB_FILE}"; \
    dpkg -i "${DEB_FILE}"; \
    rm "${DEB_FILE}"


# Install quarto chromium 
RUN quarto install chromium

# 4. Install Micromamba
# We use a "multi-stage copy" to grab the binary from the official image.
# This is cleaner and safer than running an install script with curl.
COPY --from=mambaorg/micromamba:1.5 /bin/micromamba /bin/micromamba

# 5. Set up Mamba Environment
# Define where conda envs will live
ENV MAMBA_ROOT_PREFIX=/opt/conda
# Add micromamba to path so we can use the command
ENV PATH=$MAMBA_ROOT_PREFIX/bin:$PATH

# Copy env.yml and install
COPY .devcontainer/env.yml /tmp/env.yml
RUN micromamba create -y -n base -f /tmp/env.yml

# 6. Activate Environment by Default
# We force the system PATH to look in the 'base' environment first.
# This means typing 'python' runs the mamba python, not the system python.
ENV PATH="/opt/conda/envs/base/bin:$PATH"

WORKDIR /app
CMD ["/bin/bash"]
