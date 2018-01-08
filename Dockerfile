# Use an official Golang runtime as a parent image
FROM golang:1.8

# Set the working directory to /app
WORKDIR /go/src/github.com/djking/hello

# Copy the current directory contents into the container at /app
COPY . /go/src/github.com/djking/hello

# create bin file
RUN go install github.com/djking/hello
#RUN ["apt-get", "install", "-y", "vim"]

# Run the executable
CMD ["/go/bin/hello"]

# Makes ref to http.ListenAndServe(":8080", nil) in the code
# Make port 80 available to the world outside this container
EXPOSE 8080
