# FROM circleci/node:latest-browsers

# WORKDIR /usr/src/app/
# USER root
# COPY package.json ./
# RUN yarn

# COPY ./ ./

# RUN npm run test:all

# CMD ["npm", "run", "build"]

FROM nginx

COPY ./dist/ /usr/share/nginx/html/

EXPOSE 80
