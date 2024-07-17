# privacyidea-docker
full privacyidea docker stack

This project is WIP. However some things are ready
for raw usage at your own risk. Feel free to modify.

## docker-compose.yml

This can be used as a standalone privacyidea with mysql
on one host.

## manifests/deployment.yaml
WIP.

`kubectl apply -f deployment.yaml`

This will create a pod in your kubernetes cluster, and will run
only one privacyidea app.

TODO:
- volumes.
