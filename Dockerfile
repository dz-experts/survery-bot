FROM python:3.8-buster

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]

EXPOSE 5000
