FROM eamonwoortman/alpine-python-curl-zip
RUN apk update
RUN apk add git
RUN pip install selenium
RUN apk add chromium-chromedriver
RUN apk add chromium
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/script.sh
