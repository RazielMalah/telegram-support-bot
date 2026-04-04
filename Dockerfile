# Используем официальный образ Python 3.11
FROM python:3.11-slim

# Создаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл с зависимостями и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь остальной код проекта
COPY . .

# Указываем команду для запуска твоего бота
CMD ["python", "bot.py"]
