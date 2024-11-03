# syntax=docker/dockerfile:1

FROM python:3.12

LABEL authors="mac.mceacharn@pm.me"

WORKDIR /blockchain-docker

EXPOSE 80/tcp

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

