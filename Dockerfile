FROM node:20.9.0-alpine

WORKDIR /app
COPY package.json yarn.lock  ./
RUN yarn install --frozen-lockfile
COPY ./tests ./tests
COPY ./src ./src

CMD [ "yarn", "start" ]


# FROM node:20.9.0

# WORKDIR /app
# COPY . ./

# RUN yarn install --frozen-lockfile

# CMD [ "yarn", "start" ]