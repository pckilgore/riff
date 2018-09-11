FROM mhart/alpine-node

#Set up default working directory
WORKDIR /usr/src
# We will uncomment this later when it matters.
RUN apk add --no-cache git

# Install deps from package
COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Run Lint
RUN npm run lint --silent

# Run unit testing
RUN npm run test-deploy --silent

# Discard test artifacts.
RUN rm -rf node_modules/ test/ .git/

# Deploy
ENV NODE_ENV=production
RUN npm install # --silent (for later)
CMD ["npm", "start"]
