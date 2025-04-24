FROM node:22

RUN apt-get update && \
    apt-get install -y build-essential can-utils iproute2 sudo && \
    apt-get clean

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN chmod +x ./start.sh

EXPOSE 7575

CMD ["./start.sh"]
