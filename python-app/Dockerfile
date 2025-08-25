FROM python:3.11-slim

WORKDIR /app

# When building with context 'python-app' (docker build -t name python-app)
# the Dockerfile is inside the context and paths should be relative to it.
# Install runtime dependencies if requirements.txt exists
COPY requirements.txt /app/requirements.txt
RUN if [ -f /app/requirements.txt ]; then pip install --no-cache-dir -r /app/requirements.txt; fi

# Copy application sources from the build context
COPY . /app

# Default command - adjust if your entrypoint is different
CMD ["python", "main.py"]
