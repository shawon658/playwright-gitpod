FROM gitpod/workspace-full

USER root

RUN apt-get update && \
    apt-get install -y xvfb x11vnc && \
    rm -rf /var/lib/apt/lists/*

USER gitpod
