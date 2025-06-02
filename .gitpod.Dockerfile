FROM mcr.microsoft.com/playwright:v1.44.1-focal

USER root

RUN apt-get update && apt-get install -y \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libxkbcommon0 \
    libatspi2.0-0 \
    libgbm1 \
    xvfb \
    x11vnc \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

USER pwuser

ENV DISPLAY=:99
