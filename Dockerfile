# hadolint ignore=DL3007
FROM nginx:latest
WORKDIR /app
COPY ./app .
EXPOSE 80
CMD ["nginx", "-p", "./nginx", "-c", "nginx.conf"]