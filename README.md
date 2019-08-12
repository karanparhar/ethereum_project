# ethereum_project

This is sample ethereum_project

## Quick start

### Prerequisites
- [go](https://golang.org/dl/) version v1.10+

### Steps to run

```
$ mkdir $GOPATH/src/github.com/
$ cd $GOPATH/src/github.com/
$ git clone https://karanjit@bitbucket.org/karanjit/ethereum_project.git
$ cd ethereum_project
$ make docker
```

## check status
```
$ curl -X GET http://localhost:8090/
```
## get blocks
```
$ curl -X GET "http://localhost:8090/fetchblocks?&blocks=100"
```
## get transactions
```
$ curl -X GET "http://localhost:8090/gettransaction?&trhash=0x39705515c4776ba5ebd2b8690ea9f0d956369135d39956897e4970031f73ec2d"
```
 
 