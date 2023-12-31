# Use the official Golang image as the base image
FROM golang:1.21.5

# Set the working directory inside the container
WORKDIR /app

# Copy the local source code to the container's working directory
COPY . .

# Build the Go application inside the container
RUN go build -o main .

# Command to run the executable when the container starts
CMD ["./main"]
