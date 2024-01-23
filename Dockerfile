Movierequest# Don't Remove Credit @Baljeet_singh1114
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @Baljeet_singh1114

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Movierequest
WORKDIR /Movierequest
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
