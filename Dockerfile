# Determine the base image
FROM node:14-alpine

# Choose a working directory
WORKDIR /app

# Copy files related to app dependencies
COPY package.json .
COPY yarn.lock .

# Install dependencies
RUN yarn --frozen-lockfile

# Copy all files and directories in the project
COPY . .

# Port binding at port 3000
EXPOSE 3000

# Start the app
CMD ["yarn", "start"]
