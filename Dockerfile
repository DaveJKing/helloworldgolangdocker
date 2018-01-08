# Use an official Golang runtime as a parent image
FROM golang:1.8

# Set the working directory to /app
WORKDIR /go/src/app

# Copy the current directory contents into the container at /go/src/app
COPY . /go/src/app

# create bin file in /go/src/app
RUN go install app


# Run the executable
CMD ["/go/bin/app"]

# Makes ref to http.ListenAndServe(":8080", nil) in the code of main.go
# Make port 80 available to the world outside this container
EXPOSE 8080
