FROM alpine:latest

RUN apk add --no-cache git imagemagick libarchive-tools curl ffmpeg go \
    && git clone https://github.com/star-39/moe-sticker-bot \
    && echo 'BOT_TOKEN=${TOKEN} ./moe-sticker-bot' >> start.sh \
    && chmod +x start.sh

CMD ./start.sh
