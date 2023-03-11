FROM ubuntu

RUN apt-get update

RUN apt-get install -y python3 python3-pip

RUN pip3 install flask

COPY app.py /opt/src/app.py

ENTRYPOINT FLASK_APP=/opt/src/app.py flask run --host=0.0.0.0