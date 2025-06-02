# Use the correct Playwright image version
FROM mcr.microsoft.com/playwright:v1.44.1-focal



USER root

# Install browser dependencies + X11 + VNC server
RUN apt-get update && apt-get install -y \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libxkbcommon0 \
    libatspi2.0-0 \
    libgbm1 \
    xvfb \
    x11vnc && \
    rm -rf /var/lib/apt/lists/*

USER pwuser
