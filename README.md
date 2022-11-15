# docker-openssl

Docker container based on Ubuntu that has specific tooling:

- openssl
- kubectl

## How to use

```bash
docker run --rm -it \
    --name <container_name> \
    -v ${HOME}/.kube/:/root/.kube/ \
    --entrypoint /bin/bash
    wanderadock/openssl:latest
```
