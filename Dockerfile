FROM node:11-alpine
LABEL maintainer='Andrew Cole <andrew.cole@illallangi.com>'
#
# This Docker image encapsulates the CyberChef analysis tool by GCHQ
# from https://github.com/gchq/CyberChef
#
# To run this image in the background after installing Docker,
# use the following command:
#
# sudo docker run -d -p 8080:8080 remnux/cyberchef
#
# Then, connect to http://localhost:8080 using your web browser.
# To stop the container, use Docker's "ps" and "stop" commands.
#

WORKDIR /install/CyberChef/

COPY ./ /install/CyberChef/

RUN npm install -g grunt-cli && \ 
    npm install

EXPOSE 8080
ENTRYPOINT ["grunt"]
CMD ["dev"]