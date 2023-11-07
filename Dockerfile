# Use the official Python image as a base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Flask dependency
RUN pip install -r requirements.txt

# Copy the Flask application code into the container
COPY app.py .

# Expose the port that your Flask app will run on
EXPOSE 80

# Define the command to run your Flask app
CMD [ "python3", "app.py" ]
