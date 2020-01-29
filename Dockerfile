FROM node:11-alpine
LABEL maintainer='Andrew Cole <andrew.cole@illallangi.com>'
WORKDIR /install/CyberChef/

COPY ./ /install/CyberChef/

RUN npm install -g grunt-cli && \ 
    npm install

EXPOSE 8080
ENTRYPOINT ["grunt"]
CMD ["dev"]