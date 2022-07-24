# Pull base image
FROM python:3.10
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /a11
# Install dependencies
COPY Pipfile Pipfile.lock /a11/
RUN pip install pipenv && pipenv install --system
# Copy project
COPY . /a11/