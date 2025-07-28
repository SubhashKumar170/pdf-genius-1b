# Base image with Python and pip
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /Challenge_1b

# Copy all project files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir pymupdf scikit-learn

# Run the script
CMD ["python", "main.py"]
