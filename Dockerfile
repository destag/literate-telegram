FROM python:3.9.4-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
