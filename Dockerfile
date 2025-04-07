ARG NODE_VERSION=20
FROM node:${NODE_VERSION}-alpine AS base

RUN apk add git
RUN git clone -b main https://gitdab.com/cadence/out-of-your-element.git /app

WORKDIR /app

RUN for FILE in "scripts/setup.js" "scripts/start-server.js"; do \
    sed -i '/server\.listen/{s/)\([^)]*\)$/, "0.0.0.0"&/}' "${FILE}"; \
    done

RUN npm install
RUN ln -s /app/addbot.sh /usr/bin/addbot

EXPOSE 6693
CMD npm run start
