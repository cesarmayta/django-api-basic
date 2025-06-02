FROM python:3.9-slim

# Set the working directory
WORKDIR /my-django-app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]