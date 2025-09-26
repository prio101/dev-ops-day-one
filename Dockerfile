FROM node:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# copy workdir
COPY . /app/

# install dependencies
RUN cd /app && npm install
RUN npm cache clean --force

ENV PORT=9000

EXPOSE $PORT

CMD ["npm", "start"]


