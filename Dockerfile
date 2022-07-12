FROM python:slim

WORKDIR /app

RUN pip install webcomix
ADD startup.sh /app/startup.sh
RUN chmod +x /app/startup.sh
VOLUME /out

ENTRYPOINT /app/startup.sh
