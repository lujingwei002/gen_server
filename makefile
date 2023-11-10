

all: gen_server gen_grpc_server gen_grpc_client

gen_server:
	go build -o bin/gen_server src/bin/gen_server/main.go


gen_grpc_server:
	go build -o bin/gen_grpc_server src/bin/gen_grpc_server/main.go

gen_grpc_client:
	go build -o bin/gen_grpc_client src/bin/gen_grpc_client/main.go

