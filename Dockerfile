# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the app files
COPY app.py .

# Install dependencies
RUN pip install flask

# Expose the container port
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
