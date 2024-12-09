# Use the latest Go image
FROM golang:1.23-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy app source code
COPY . .

# Build the application
RUN go build -o main .

# Expose the API port
EXPOSE 8080

# Start the application
CMD ["go", "run", "main.go"]