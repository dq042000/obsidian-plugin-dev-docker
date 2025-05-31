FROM node:18-bullseye-slim

# 更新套件資訊並升級安全性修補
RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /home/node/plugin

# 設定 ll alias
RUN echo "alias ll='ls -alF'" >> /etc/bash.bashrc

# Install global development tools
RUN npm install -g rollup typescript

# Default command (can be overridden)
CMD ["sh"]