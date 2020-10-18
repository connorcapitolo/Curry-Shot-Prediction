# Use latest Python runtime as a parent image
FROM python:3.8-slim

# Meta-data
LABEL maintainer="Connor Capitolo <connorcapitolo@yahoo.com>" \
      description="First Docker container for using Catboost \
      to predict if Steph Curry makes or misses a shot"

# Set the working directory to /app
WORKDIR /src

# Copy the current directory contents into the container at /app
COPY . /src

# Install the required libraries
RUN pip --no-cache-dir install -r /src/requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyter when container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
