FROM mhart/alpine-node

#Set up default working directory
WORKDIR /usr/src
# We will uncomment this later when it matters.
# ENV NODE_ENV=production
# RUN apk add -no-cache git

# Install deps from package
# COPY package.json package-lock.json ./
# RUN npm install # --silent (for later)

COPY test.html .

# Testing (for later)
# RUN npm test

# Trigger a static deploy to now, for ... now.
RUN mkdir /public
RUN mv test.html /public
