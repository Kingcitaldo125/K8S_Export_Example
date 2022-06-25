FROM debian:11

RUN apt -y update && apt -y install curl vim

WORKDIR /app/

COPY script.sh .

EXPOSE 8000

CMD [ "./script.sh" ]

