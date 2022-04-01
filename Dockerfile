# Base image.
FROM node:14
# Create and set the work directory inside the image named 'app'
WORKDIR /app
COPY package.json .
# Execute a install command
RUN npm install
# Copy the app file into the image working directory
COPY . .
# State the listening port for the container.
# The app's code does not actually specify the port, so it would be useful to include here.
ENV PORT=5000
# Run 'python app.py' on container start-up. This is the main process.
EXPOSE 5000
ENTRYPOINT ["npm","start"]
