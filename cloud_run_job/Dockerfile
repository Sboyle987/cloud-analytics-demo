FROM python:3.11-slim

# Copy local code to the container image
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

CMD ["python", "main.py"]