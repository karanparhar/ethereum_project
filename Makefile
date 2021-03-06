# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=ethereum
BINARY_UNIX=$(BINARY_NAME)_unix
all: test build
fmt:
		$(GOCMD) fmt ./...
build:

		$(GOBUILD) -o $(BINARY_NAME) -v
linux:
		GOOS=linux $(GOBUILD) -o $(BINARY_NAME) -v	
test:
		$(GOTEST) -v ./...
clean:
		$(GOCLEAN)
		rm -f $(BINARY_NAME)
		rm -f $(BINARY_UNIX)
run:
		$(GOBUILD) -o $(BINARY_NAME) -v ./...
		./$(BINARY_NAME)
getdeps:
	    $(GOCMD) mod vendor	
# Cross compilation
build-linux:
		CGO_ENABLED=0 GOOS=linux GOARCH=amd64 $(GOBUILD) -o $(BINARY_UNIX) -v
docker:
		docker build -t ethereum .
docker-run:

		docker run -d  -p 8090:8090 ethereum:latest 

.PHONY: all fmt build linux test clean run getdeps build-linux docker docker-run
