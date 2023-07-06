FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y nasm gcc binutils make qemu-kvm x11-apps && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
