FROM node:21.7.3

# Create app directory
WORKDIR /usr/src/app

# Install Firebase CLI
RUN npm install -g firebase-tools

# Copy the project files
COPY . .

# Expose the port that Firebase will serve on
EXPOSE 5000

# Command to run the Firebase Hosting emulator
CMD ["firebase", "emulators:start", "--only", "hosting", "--project", "bytefusion-fcc03"]
