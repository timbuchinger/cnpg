FROM ghcr.io/cloudnative-pg/postgresql:17

USER root

RUN apt-get update && \
  apt-get install -y postgresql-17-vector && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

USER postgres
