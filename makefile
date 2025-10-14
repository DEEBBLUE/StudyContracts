CC = protoc
PREF = ./api/
CONF = --proto_path=./contracts --go_out=$(PREF)$@ --go_opt=paths=source_relative --go-grpc_out=$(PREF)$@ --go-grpc_opt=paths=source_relative

COM = $(CC) $(CONF)

all: Notification 

Notification:
	$(COM) notification.proto 




