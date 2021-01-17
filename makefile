HOME := /Users/muhammadchandrazulfikar

SRC_DIR := ${HOME}/Documents/proto/kopdar-proto/protos/v1/

gen:
	protoc user.proto --proto_path=${SRC_DIR} --dart_out=grpc:lib/core/api/v1/user
	protoc chat.proto --proto_path=${SRC_DIR} --dart_out=grpc:lib/core/api/v1/chat