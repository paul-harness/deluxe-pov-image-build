FROM python:3.6.8-stretch

RUN apt update && apt install -y gdebi-core libnss3 libgconf-2-4
ADD google-chrome-stable_current_amd64.deb .
RUN gdebi -n google-chrome-stable_current_amd64.deb

WORKDIR /app
ADD requirements.txt .
RUN pip install selenium

ADD chromedriver .
RUN chmod +x chromedriver

RUN apt install -y git
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
ENTRYPOINT /bin/script.sh
