FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    software-properties-common \
    build-essential \
    ninja-build \ 
    gettext \
    libtool \
    libtool-bin \
    autoconf \
    automake \
    cmake  \
    g++ \
    pkg-config \
    unzip \
    curl \
    git \
    python3 \
    python3-pip \
    ripgrep \
    gcc make \
    pkg-config autoconf automake \
    python3-docutils \
    libseccomp-dev \
    libjansson-dev \
    libyaml-dev \
    libxml2-dev
    # exuberant-ctags


RUN git clone https://github.com/neovim/neovim.git /opt/neovim
RUN cd /opt/neovim && \
	    make CMAKE_BUILD_TYPE=RelWithDebInfo && \
	    make install
RUN https://github.com/universal-ctags/ctags.git
RUN cd ctags && \
./autogen.sh \ 
./configure \
make \ 
make install 

RUN mkdir -p ~/.config/nvim
COPY nvim root/.config/nvim/
WORKDIR /app 
CMD ["nvim"] 
