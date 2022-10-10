FROM alpine:latest

RUN apk add --no-cache git imagemagick libarchive-tools curl ffmpeg go \
    && git clone https://github.com/star-39/moe-sticker-bot \

ADD start.sh /start.sh

RUN chmod +x start.sh

CMD /start.sh
