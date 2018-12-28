package frappe_api

import (
	"context"
	"log"
)

// Server represents the gRPC server
type Server struct {
}

// SayHello generates response to a Ping request
func (s *Server) Brew(ctx context.Context, in *CoffeeOrder) (*Coffee, error) {
	log.Printf("Received order for coffee of type %s", in.Type)
	return &Coffee{Strength: 3, Sugar: true, Type: in.Type}, nil
}
