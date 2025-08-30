FROM python:3.11-alpine3.17 AS builder

WORKDIR /usr/src/app

RUN apk add --no-cache --virtual .build-deps \
    gcc musl-dev libffi-dev

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:3.11-alpine3.17

WORKDIR /usr/src/app

RUN addgroup -S app && adduser -S app -G app
USER app

COPY --from=builder /install /usr/local

COPY . .

EXPOSE 3000

CMD ["python", "app.py"]
