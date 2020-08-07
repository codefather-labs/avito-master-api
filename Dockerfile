FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y python3.8 python3.8-dev python3-pip

WORKDIR /app/

COPY build/lib /app/lib
COPY build/avito_libapi /app/avito_libapi
COPY requirements.txt /app/requirements.txt

RUN python3 -m pip install -r /app/requirements.txt

CMD /app/avito_libapi