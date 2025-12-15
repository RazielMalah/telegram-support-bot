FROM python:3.11-slim

WORKDIR /app

# healthcheck utils
RUN apt-get update \
    && apt-get install -y --no-install-recommends procps \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py .

RUN mkdir -p /app/data

ENV PYTHONUNBUFFERED=1

CMD ["python", "bot.py"]
