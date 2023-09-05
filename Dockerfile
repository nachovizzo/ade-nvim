FROM ubuntu:22.04

RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates \
    curl \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/neovim/

# Install Neovim
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz \
    && tar xzf nvim-linux64.tar.gz \
    && mv nvim-linux64/* . \
    && rmdir nvim-linux64 \
    && rm nvim-linux64.tar.gz

# Install NodeJS. Otherwise nvim is not really usefull
RUN curl -LO https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz \
    && tar -xf node*.tar.xz \
    && cp -r node*/* . \
    && rm -rf node*/ \
    && rm node*.tar.xz

COPY env.sh /opt/neovim/.env.sh
VOLUME /opt/neovim
CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]
