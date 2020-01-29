FROM node:13.7.0-alpine3.10
LABEL maintainer='Andrew Cole <andrew.cole@illallangi.com>'
WORKDIR /install/CyberChef/

COPY ./ /install/CyberChef/

RUN npm config set unsafe-perm true & \
    npm install -g grunt-cli && \ 
    npm install

EXPOSE 8080
ENTRYPOINT ["grunt"]
CMD ["dev"]