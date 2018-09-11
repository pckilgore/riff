FROM mhart/alpine-node

#Set up default working directory
WORKDIR /usr/src
# We will uncomment this later when it matters.
# RUN apk add -no-cache git

# Install deps from package
COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Run unit testing
RUN npm run test-deploy

# Discard test artifacts.
RUN rm -rf node_modules/ test/

# Deploy
ENV NODE_ENV=production
RUN npm install # --silent (for later)
EXPOSE 3000
CMD ["npm", "start"]
