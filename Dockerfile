# Utiliser l'image officielle de n8n comme base
FROM n8nio/n8n:latest

# Passer à l'utilisateur root pour pouvoir installer des choses
USER root

# Installer les dépendances : Python (pour yt-dlp) et FFmpeg (crucial pour l'audio)
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Installer yt-dlp avec pip
RUN pip3 install yt-dlp

# Revenir à l'utilisateur normal de n8n pour la sécurité
USER node
