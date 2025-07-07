FROM node:18-bullseye

# Install FFmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Install n8n
RUN npm install -g n8n

# Create user
RUN useradd --create-home --shell /bin/bash node
USER node

# Set data folder
ENV N8N_USER_FOLDER=/home/node/

# Start n8n
CMD ["n8n"]
