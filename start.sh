#!/bin/sh
# Build

cd moe-sticker-bot
go build
chmod +x moe-sticker-bot

BOT_TOKEN=${TOKEN} ./moe-sticker-bot
