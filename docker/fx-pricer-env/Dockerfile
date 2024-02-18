FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC
ENV APP_VERSION 1.0

# Update and install essential packages
RUN apt-get update && \
    apt-get install -y \
	vim less apt-utils
