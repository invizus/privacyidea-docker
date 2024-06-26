FROM python:3.8-bullseye
RUN apt-get update && apt-get upgrade -y
RUN pip install --upgrade pip
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r https://raw.githubusercontent.com/privacyidea/privacyidea/v3.8.1/requirements.txt
RUN pip install -r requirements.txt
# app.py is uWSGI script
COPY app.py /app
# privacyidea.ini is uWSGI config
COPY privacyidea.ini /app
EXPOSE 8443
CMD uwsgi --http 0.0.0.0:8080 --wsgi-file app.py --processes 4
#CMD uwsgi --master --https 0.0.0.0:8443,/opt/data/uwsgi/cert.crt,/opt/data/uwsgi/cert.key --wsgi-file app.py --processes 2
