FROM python:3.10

WORKDIR /app

COPY src/requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY src/deadlines_bot ./
COPY service_account.json ../

CMD ["python", "BX-Telegram.py"]
