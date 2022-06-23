FROM debian:11

RUN apt -y update && apt -y install curl

WORKDIR /app/

COPY script.sh .

ENV server_host="localhost"
ENV server_port="8000"

EXPOSE 8000

CMD [ "script.sh" ]

