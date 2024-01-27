# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Clone the GitHub repository
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/galsal815/final-python.git .
#RUN git clone https://github.com/lidorg-dev/final-python.git .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME final-python

# Run app.py when the container launches
CMD ["python", "app.py"]
