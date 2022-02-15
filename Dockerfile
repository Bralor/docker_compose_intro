FROM ubuntu:latest
WORKDIR /hello-app

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y python3-pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000

COPY . .
CMD ["pip", "--version"]
