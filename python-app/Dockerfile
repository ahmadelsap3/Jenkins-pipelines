# Use official Python image
FROM python:3.11-slim

WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt /app/requirements.txt

# Install dependencies if requirements.txt exists
RUN if [ -f /app/requirements.txt ]; then pip install --no-cache-dir -r /app/requirements.txt; fi

# Copy all source files
COPY . /app/

# Default command
CMD ["python", "main.py"]