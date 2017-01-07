FROM python:3-alpine

ENV OPENCV_VERSION 3.2.0

# Install compilation packages
RUN apk add --update gcc g++ make cmake git

RUN git clone --max-depth=1 https://github.com/opencv/opencv \
  && cd opencv \
  && git pull --tags \
  && git checkout $OPENCV_VERSION
