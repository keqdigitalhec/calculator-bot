# Базовий образ
FROM python:3.11-slim

# Робоча директорія
WORKDIR /app

# Копіюємо файли
COPY . /app

# Встановлення залежностей
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Запуск бота
CMD ["python", "main.py"]

ENV BOT_TOKEN=${BOT_TOKEN}
