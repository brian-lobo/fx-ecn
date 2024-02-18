#!/bin/sh

docker stop fx-pricer && docker rm fx-pricer && docker run -it --name fx-pricer fx-pricer:latest

