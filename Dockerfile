FROM python:3.10.13-alpine

LABEL name="Python Application" \   
     maintainer="Asher Farhan <asherfarhan123@gmail.com>" \
     summary="A Sample Python application"

WORKDIR /app

COPY requirements.txt .

RUN pip install -r 'requirements.txt'

EXPOSE 8081

COPY . ./

CMD [ "python", "./app.py" ]