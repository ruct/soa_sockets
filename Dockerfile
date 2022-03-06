FROM python:3.6

ADD ./* /

RUN apt-get update -y
RUN apt-get install -y portaudio19-dev
RUN apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0
RUN pip3.6 install -r requirements.txt

EXPOSE 8080
EXPOSE 443
EXPOSE 80
CMD [ "python3.6", "./server-tcp.py" ]
