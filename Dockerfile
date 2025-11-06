# Use an official lightweight Python image as the base
FROM python:3.13-alpine

# Copy the application code
COPY . /app

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port your Flask application will run on (default Flask port is 5000)
EXPOSE 5000

# Command to run the Flask application
CMD ["python", "app.py"]
