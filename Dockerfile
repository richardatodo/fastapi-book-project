# Use an official lightweight Python image as the base
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the required port
EXPOSE 8000

# Set the FastAPI entry point
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]