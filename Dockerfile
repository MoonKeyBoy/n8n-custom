FROM n8n.io/n8n:latest
USER root
RUN apk add --no-cache yt-dlp ffmpeg
USER node
