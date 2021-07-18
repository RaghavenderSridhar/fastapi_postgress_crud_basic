FROM python:3.8-slim-buster


RUN apt-get update && apt-get install -y \
    autoconf automake build-essential curl git libsnappy-dev libtool pkg-config

RUN echo " this is docker container for CRUD FAST API postgress"

RUN echo " this is Maintained by Raghavender SRIDHAR"

LABEL maintainer="Raghavender Sridhar"

USER root


# COPY requirements.txt /tmp/requirements.txt

EXPOSE 80 8082 8081 8080

WORKDIR /app

COPY . .

RUN python3 -m pip install -r requirements.txt

# CMD bash
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
##working code
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--workers","4"]