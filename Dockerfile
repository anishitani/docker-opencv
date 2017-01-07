FROM python:3-alpine

# Install compilation packages
RUN apk add --update gcc g++ make cmake
