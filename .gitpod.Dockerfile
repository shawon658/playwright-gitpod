FROM mcr.microsoft.com/playwright:v1.44.1-focal

USER root

# Install needed libraries + xvfb + x11vnc + net-tools for debugging
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

# Start Xvfb and x11vnc, then run playwright tests
CMD xvfb-run --server-args="-screen 0 1280x720x24" bash -c "\
    x11vnc -forever -nopw -display :99 -shared -rfbport 5900 & \
    npx playwright test"
