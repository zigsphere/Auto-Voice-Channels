FROM python:3.9.6-buster

RUN mkdir /opt/voice
WORKDIR /opt/voice
COPY . .
RUN apt install gcc -y
RUN pip3 install -r requirements.txt

CMD ["python3", "/opt/voice/auto-voice-channels.py"]
