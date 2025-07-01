FROM python:3.13.4-alpine3.22

WORDKDIR /app

COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

# docker build -t imagem
# docker run - p 8000:8000 imagem

# MARVEL