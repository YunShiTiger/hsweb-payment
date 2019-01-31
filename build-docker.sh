#!/usr/bin/env bash
./mvnw -Dgit.commit.hash=$(git rev-parse HEAD) clean package -DskipTests
docker rmi  hsweb/hsweb-payment
docker build -t hsweb/hsweb-payment -f ./Dockerfile .
