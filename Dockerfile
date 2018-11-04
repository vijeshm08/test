FROM alpine
MAINTAINER Vijesh M "viju.m08@gmail.com"

RUN apk add --update python py-pip
RUN pip install flask
RUN mkdir /home/viju
COPY hello.py /home/viju
WORKDIR /home/viju
EXPOSE 5000
CMD python ./hello.py
