# FROM node:latest as build
# From node:18.16.0 as build
# WORKDIR /usr/local/app
# COPY ./ /usr/local/app/
# RUN npm install
# RUN npm run build

# FROM nginx:1.17.1-alpine
# COPY --from=build /usr/local/app/dist/ro /usr/share/nginx/html
# EXPOSE 80

FROM nginx:1.17.1-alpine
COPY /dist/ro /usr/share/nginx/html
