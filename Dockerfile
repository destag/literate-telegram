FROM python:3.9.4-alpine

WORKDIR /usr/src/app
COPY requirements.txt main.py ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
