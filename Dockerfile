FROM python:3.11-alpine

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY grapher_lib ./grapher_lib
COPY app_tabs.py ./app_tabs.py

CMD gunicorn -b 0.0.0.0:80 app_tabs:server
