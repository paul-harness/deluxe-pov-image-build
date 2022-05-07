FROM python:alpine3.9
RUN apk update
RUN apk add firefox-esr
RUN apk add xvfb
RUN pip install -r requirements.txt
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/script.sh
