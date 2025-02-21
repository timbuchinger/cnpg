FROM ghcr.io/cloudnative-pg/postgresql:16

USER root

RUN set -xe; \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        flex \
        bison \
        pkg-config \
        git \
        libreadline-dev \
        zlib1g-dev \
        raptor2-utils \
        postgresql-server-dev-16 \
        postgresql-16-pgvector && \
    git clone --branch master --single-branch https://github.com/apache/age.git /age && \
    cd /age && \
    make && \
    make install && \
    cd / && \
    rm -rf /age && \
    apt-get remove -y \
        build-essential \
        cmake \
        flex \
        bison \
        pkg-config \
        git \
        libreadline-dev \
        postgresql-server-dev-16 && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER postgres
