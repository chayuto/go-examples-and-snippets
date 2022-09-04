FROM golang:1.16-alpine

# Set destination for COPY
WORKDIR /app

# Download Go modules
# COPY go.mod .
# COPY go.sum .
# RUN go mod download

# Copy the source code. Note the slash at the end, as explained in
# https://docs.docker.com/engine/reference/builder/#copy
# COPY *.go ./

COPY . . 

# Build
RUN go build -o /wombato

# # Run
# CMD [ "/wombato" ]
