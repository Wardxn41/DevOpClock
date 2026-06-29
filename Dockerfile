# Use an official Python image
FROM python:3.14-slim

# Metadata (optional but good practice)
LABEL maintainer="Henry Ward"
LABEL application="DevOp_Clock"

# Prevent Python from buffering output
ENV PYTHONUNBUFFERED=1

# Create the working directory
WORKDIR /app

# Copy dependency list first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application source
COPY . .

# Document the port Flask listens on
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]