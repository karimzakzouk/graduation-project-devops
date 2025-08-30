FROM python:3.11-alpine3.17 AS builder

# Set working directory
WORKDIR /usr/src/app

# Install build dependencies
RUN apk add --no-cache --virtual .build-deps \
    gcc musl-dev libffi-dev

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# Final lightweight runtime image
FROM python:3.11-alpine3.17

WORKDIR /usr/src/app

# Create non-root user
RUN addgroup -S app && adduser -S app -G app
USER app

# Copy installed dependencies from builder
COPY --from=builder /install /usr/local

# Copy app source
COPY . .

EXPOSE 3000

# Use exec form to prevent shell issues
CMD ["python", "app.py"]
