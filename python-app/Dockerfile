FROM python:3.11-slim

WORKDIR /app

# Install runtime dependencies if requirements.txt exists
COPY requirements.txt /app/requirements.txt
RUN if [ -f /app/requirements.txt ]; then pip install --no-cache-dir -r /app/requirements.txt; fi

# Copy application sources
COPY . /app

# Default command - adjust if your entrypoint is different
CMD ["python", "main.py"]