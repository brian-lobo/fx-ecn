FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC
ENV APP_VERSION 1.0

# Update and install essential packages
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    g++-10 \
    clang-11 \
    ninja-build \
    git \
    python3 \
    python3-pip \
    libboost-all-dev \
    doxygen \
    libxml2-utils \
    libncurses5-dev \
    libssl-dev \
    wget \
    unzip

# Set alternative versions for clang and g++
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-11 100 && \
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-11 100 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 100

# Install gmock and gtest libraries
RUN apt-get update && \
    apt-get install -y \
    libgtest-dev libgmock-dev

