# Start with the base Python container
# FIXME: Update the version
FROM docker.io/python:3.13.7

# Install packages that are required. 
RUN pip install Django==6.0.1

### added by me 
RUN pip install psutil

# Copy the Python code into the container
COPY djangotutorial /app

# Set environment variables 
ENV PORT=8080 

# Set the working directory
WORKDIR /app 

# Default command to execute in the container
CMD ["/bin/sh", "-c", "python ./manage.py runserver 0.0.0.0:$PORT"]
