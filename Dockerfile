FROM alpine

WORKDIR /app

COPY test.js .

# Install nodejs & npm
RUN apk add --update nodejs npm

#  Install our project dependencies ( libraries ) 
RUN npm install express

# EXPOSE 8080 # Not necessary, only used to tell whoever is using the image that the application is listening to that port

CMD node test.js 
