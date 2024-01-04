# Use an the official Node.js image as a starting point
FROM node:14

# Set the place where your app will live inside the box
WORKDIR /usr/src/app

# Copy the recipe (package.json and package-lock.json)
COPY package*.json ./

# Mix/prepare the ingredients (install app dependencies)
RUN npm install

# Add your app's code to the box
COPY . .

# Say which door to knock on (Exposing the door number 3000)
EXPOSE 3000

# Tell Docker how to start your app
CMD ["node", "app.js"]

