# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
# https://itnext.io/how-to-use-docker-multi-stage-build-to-create-optimal-images-for-dev-and-production-568c19a39de8

FROM node:15-alpine as base
ENV PORT=3000
ENV NODE_ENV=production
ENV NPM_CONFIG_PRODUCTION=false
WORKDIR /app
COPY readme.md package*.json yarn.lock* ./
COPY . .

FROM base as dev
EXPOSE 3000
