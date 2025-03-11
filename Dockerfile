# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN pip install flask

## Expose port 8080
EXPOSE 8080

#Command to run the application#
CMD ["python", "app.py"]

# Print "Completed successfully" during the build process
RUN echo "Completed successfully"
