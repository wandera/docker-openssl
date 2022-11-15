FROM ubuntu:22.10

RUN set -ex \
    && apt-get clean && apt-get update \
    && apt-get install -y libssl-dev \
    && apt-get install -y openssl \
    && apt-get install -y uuid-runtime \
    && apt-get install -y ca-certificates \
    && apt-get install -y curl \
    && apt-get install -y apt-transport-https \
    && curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list \
    && apt-get update \
    && apt-get install -y kubectl=1.21.14-00 \
    && rm -rf /var/lib/apt/lists/*
