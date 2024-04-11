# Specify Base Image
FROM node:18-alpine
 
# Work Directory
WORKDIR /usr/app

#copy packge files into container
COPY package.json ./

# Install Dependencies
RUN npm install

#cop other files into container
COPY ./ ./

# Startup Command
CMD ["npm", "run", "serve"]