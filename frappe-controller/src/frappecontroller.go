package main

import (
	"fmt"
	"github.com/rstraub/dontworrybefrappe/frappe_contracts"
	"google.golang.org/grpc"
	"log"
	"net"
)

// main start a gRPC server and waits for connection
func main() {
	// create a listener on TCP port 7777
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", 7777))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	// create a server instance
	s := frappe_contracts.Server{}
	// create a gRPC server object
	grpcServer := grpc.NewServer()
	// attach the Ping service to the server
	frappe_contracts.RegisterPingServer(grpcServer, &s)
	// start the server
	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %s", err)
	}
}
