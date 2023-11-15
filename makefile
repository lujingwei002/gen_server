

all: gen-server gen-grpc-server gen-grpc-client

gen-server:
	go build -o gen-server bin/gen-server/main.go


gen-grpc-server:
	go build -o gen-grpc-server bin/gen-grpc-server/main.go

gen-grpc-client:
	go build -o gen-grpc-client bin/gen-grpc-client/main.go

