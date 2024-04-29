FROM ubuntu:20.04

COPY . /app

WORKDIR /app

RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install bash -y

EXPOSE 8080

CMD [ "/bin/sh", "-c", "cat index.html" ]
