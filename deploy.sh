#!/usr/bin/env bash
# build production images
docker build -t "$DOCKER_ID"/fib-client:latest -t "$DOCKER_ID"/fib-client:$SHA -f ./client/Dockerfile ./client
docker build -t "$DOCKER_ID"/fib-server:latest -t "$DOCKER_ID"/fib-server:$SHA -f ./server/Dockerfile ./server
docker build -t "$DOCKER_ID"/fib-worker:latest -t "$DOCKER_ID"/fib-worker:$SHA -f ./worker/Dockerfile ./worker
# push images to docker-hub
docker push "$DOCKER_ID"/fib-client
docker push "$DOCKER_ID"/fib-server
docker push "$DOCKER_ID"/fib-worker
# start k8s
kubectl apply -f k8s
# imperatively set latest images on every deployment
# use course images for now
echo "Setting server image"
kubectl set image deployments/server-deployment server="$DOCKER_ID"/fib-server:latest
echo "Setting client image"
kubectl set image deployments/client-deployment client="$DOCKER_ID"/fib-client:latest
echo "Setting worker image"
kubectl set image deployments/worker-deployment worker="$DOCKER_ID"/fib-worker:latest