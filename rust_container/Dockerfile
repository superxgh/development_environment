# Rust as the base image
FROM rust:1.67.0-slim-buster
# FROM rust:1.67.0-alpine

# Create a new empty shell project
# RUN USER=root cargo new --bin rust_http_bot
# WORKDIR /rust_http_botd


WORKDIR /workspace

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install git && \
    apt-get -y install libpq-dev && \
    apt-get -y install build-essential && \
    apt-get -y install libssl-dev && \
    apt-get install -y pkg-config && \
    cargo install diesel_cli --no-default-features --features postgres

# Copy our manifests
# COPY ./Cargo.lock ./Cargo.lock
# COPY ./Cargo.toml ./Cargo.toml
# COPY ./diesel.toml ./diesel.toml
# COPY ./.env ./.env
# COPY migrations /app/migrations
# COPY src /app/src


# RUN cargo build --release

EXPOSE 3000

# ENTRYPOINT ["/bin/bash", "-c", "cargo run --release"]


