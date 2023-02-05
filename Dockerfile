FROM node:14

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . .

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source


EXPOSE 9981
CMD [ "node", "app.js" ]
