FROM mhart/alpine-node

#Set up default working directory
WORKDIR /usr/src
# We will uncomment this later when it matters.
ENV NODE_ENV=production
# RUN apk add -no-cache git

# Install deps from package
COPY package.json package-lock.json ./
RUN npm install # --silent (for later)

COPY . .

# Testing (for later)
# RUN npm test

EXPOSE 3000
# Start our express server.
RUN npm start