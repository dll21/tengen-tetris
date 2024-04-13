FROM python:3.6.1-alpine

# Instalar dependencias del sistema necesarias
RUN apk update && apk add --no-cache python3-dev gcc libc-dev && \
    rm -rf /var/cache/apk/*

WORKDIR /app

# Actualizar pip y instalar las dependencias de Python
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    rm -rf /root/.cache/pip

COPY . .

# Crear un usuario no root y cambiar la propiedad del directorio /app
RUN adduser -D app && \
    chown -R app:app /app

USER app

EXPOSE 8080

CMD ["python3", "application.py"]
