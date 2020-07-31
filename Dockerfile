FROM python:3
MAINTAINER Bikash Saud
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt  /app/
RUN pip install -r requirements.txt
COPY . /app/

# this  is for security purpose becouse any one get root access this change everything

RUN adduseer -D user  
USER user