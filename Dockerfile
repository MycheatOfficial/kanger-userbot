FROM python:3

ENV API_ID=34511761
ENV API_HASH=e5442232b475787b085b4e59b3e4ac83

RUN apt update && apt upgrade -y; apt-get install git curl zip neofetch ffmpeg -y

WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir -r req*

CMD ["bash", "start.sh"]
