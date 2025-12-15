# Telegram Support Bot

Асинхронный Telegram-бот для обработки обращений пользователей с маршрутизацией в чат или форум-топик поддержки.

## Возможности

- Принимает сообщения из личных чатов
- Пересылает их в чат поддержки или forum topic
- Поддержка текста, фото, видео, документов, аудио, voice
- Ответы операторов автоматически возвращаются пользователю
- SQLite с сохранением связей сообщений
- Docker-деплой без systemd
- Healthcheck контейнера

## Требования

- Docker
- Docker Compose
- Telegram Bot Token

## Быстрый старт

```bash
git clone https://github.com/RazielMalah/telegram-support-bot.git
cd telegram-support-bot

cp .env.example .env
nano .env

docker compose build
docker compose up -d
