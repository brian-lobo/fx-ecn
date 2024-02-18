FROM ubuntu:latest AS fx-pricer

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC
ENV APP_VERSION 1.0


# Install environment specific dependencies
FROM fx-pricer-env:latest AS fx-pricer-env


# Install dev dependencies
FROM fx-pricer-cpp20:latest AS fx-pricer-cpp20
