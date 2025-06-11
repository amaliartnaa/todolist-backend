FROM node:20

# Install pnpm
RUN npm install -g pnpm

WORKDIR /app

# Copy & install deps
COPY pnpm-lock.yaml ./
COPY package.json ./
RUN pnpm install

# Copy the rest
COPY . .

# Start
CMD ["pnpm", "start"]
