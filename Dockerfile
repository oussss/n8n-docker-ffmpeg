FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y ffmpeg

USER node
