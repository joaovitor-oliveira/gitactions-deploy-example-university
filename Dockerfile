FROM python:3.12-bullseye

WORKDIR /app

COPY api/* ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

 CMD ["fastapi", "run", "main.py","--host", "0.0.0.0", "--port", "8000"]