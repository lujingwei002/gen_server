

all: gen_server gen_grpc_server gen_grpc_client

gen_server:
	go build -o gen_server bin/gen_server/main.go


gen_grpc_server:
	go build -o gen_grpc_server bin/gen_grpc_server/main.go

gen_grpc_client:
	go build -o gen_grpc_client bin/gen_grpc_client/main.go

