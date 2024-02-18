#!/bin/sh


cd /var/tmp/docker/fx-pricer-env && docker build -t fx-pricer-env:latest .

cd /var/tmp/docker/fx-pricer-cpp20 && docker build -t fx-pricer-cpp20:latest .

cd /var/tmp/docker/fx-pricer && docker build -t fx-pricer:latest .

cd /var/tmp/docker
docker run --name fx-pricer fx-pricer:latest
