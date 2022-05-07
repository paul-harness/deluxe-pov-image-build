FROM alpine:3.4
MAINTAINER leafney "babycoolzx@126.com"

# 更新软件源
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.4/main" >> /etc/apk/repositories && \
	echo "http://dl-4.alpinelinux.org/alpine/v3.4/community" >> /etc/apk/repositories

ENV PYTHONUNBUFFERED=1

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN apk add curl
RUN apk add chromium
RUN apk add chromium-chromedrive
RUN apk add xvfb
RUN apk install libexif
RUN apk install udev
RUN pip install selenium
RUN pip install pyvirtualdisplay

 
RUN apk add git
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
ENTRYPOINT /bin/script.sh
