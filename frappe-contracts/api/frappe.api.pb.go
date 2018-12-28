// Code generated by protoc-gen-go. DO NOT EDIT.
// source: frappe.api.proto

package frappe_api

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type CoffeeType int32

const (
	CoffeeType_BLACK      CoffeeType = 0
	CoffeeType_CAPPUCCINO CoffeeType = 1
	CoffeeType_ESPRESSO   CoffeeType = 2
)

var CoffeeType_name = map[int32]string{
	0: "BLACK",
	1: "CAPPUCCINO",
	2: "ESPRESSO",
}

var CoffeeType_value = map[string]int32{
	"BLACK":      0,
	"CAPPUCCINO": 1,
	"ESPRESSO":   2,
}

func (x CoffeeType) String() string {
	return proto.EnumName(CoffeeType_name, int32(x))
}

func (CoffeeType) EnumDescriptor() ([]byte, []int) {
	return fileDescriptor_076e6b8e4df60c46, []int{0}
}

type CoffeeOrder struct {
	Type                 CoffeeType `protobuf:"varint,1,opt,name=type,proto3,enum=frappe_api.CoffeeType" json:"type,omitempty"`
	XXX_NoUnkeyedLiteral struct{}   `json:"-"`
	XXX_unrecognized     []byte     `json:"-"`
	XXX_sizecache        int32      `json:"-"`
}

func (m *CoffeeOrder) Reset()         { *m = CoffeeOrder{} }
func (m *CoffeeOrder) String() string { return proto.CompactTextString(m) }
func (*CoffeeOrder) ProtoMessage()    {}
func (*CoffeeOrder) Descriptor() ([]byte, []int) {
	return fileDescriptor_076e6b8e4df60c46, []int{0}
}

func (m *CoffeeOrder) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_CoffeeOrder.Unmarshal(m, b)
}
func (m *CoffeeOrder) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_CoffeeOrder.Marshal(b, m, deterministic)
}
func (m *CoffeeOrder) XXX_Merge(src proto.Message) {
	xxx_messageInfo_CoffeeOrder.Merge(m, src)
}
func (m *CoffeeOrder) XXX_Size() int {
	return xxx_messageInfo_CoffeeOrder.Size(m)
}
func (m *CoffeeOrder) XXX_DiscardUnknown() {
	xxx_messageInfo_CoffeeOrder.DiscardUnknown(m)
}

var xxx_messageInfo_CoffeeOrder proto.InternalMessageInfo

func (m *CoffeeOrder) GetType() CoffeeType {
	if m != nil {
		return m.Type
	}
	return CoffeeType_BLACK
}

type Coffee struct {
	Type                 CoffeeType `protobuf:"varint,1,opt,name=type,proto3,enum=frappe_api.CoffeeType" json:"type,omitempty"`
	Sugar                bool       `protobuf:"varint,2,opt,name=sugar,proto3" json:"sugar,omitempty"`
	Strength             int32      `protobuf:"varint,3,opt,name=strength,proto3" json:"strength,omitempty"`
	XXX_NoUnkeyedLiteral struct{}   `json:"-"`
	XXX_unrecognized     []byte     `json:"-"`
	XXX_sizecache        int32      `json:"-"`
}

func (m *Coffee) Reset()         { *m = Coffee{} }
func (m *Coffee) String() string { return proto.CompactTextString(m) }
func (*Coffee) ProtoMessage()    {}
func (*Coffee) Descriptor() ([]byte, []int) {
	return fileDescriptor_076e6b8e4df60c46, []int{1}
}

func (m *Coffee) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Coffee.Unmarshal(m, b)
}
func (m *Coffee) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Coffee.Marshal(b, m, deterministic)
}
func (m *Coffee) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Coffee.Merge(m, src)
}
func (m *Coffee) XXX_Size() int {
	return xxx_messageInfo_Coffee.Size(m)
}
func (m *Coffee) XXX_DiscardUnknown() {
	xxx_messageInfo_Coffee.DiscardUnknown(m)
}

var xxx_messageInfo_Coffee proto.InternalMessageInfo

func (m *Coffee) GetType() CoffeeType {
	if m != nil {
		return m.Type
	}
	return CoffeeType_BLACK
}

func (m *Coffee) GetSugar() bool {
	if m != nil {
		return m.Sugar
	}
	return false
}

func (m *Coffee) GetStrength() int32 {
	if m != nil {
		return m.Strength
	}
	return 0
}

func init() {
	proto.RegisterEnum("frappe_api.CoffeeType", CoffeeType_name, CoffeeType_value)
	proto.RegisterType((*CoffeeOrder)(nil), "frappe_api.CoffeeOrder")
	proto.RegisterType((*Coffee)(nil), "frappe_api.Coffee")
}

func init() { proto.RegisterFile("frappe.api.proto", fileDescriptor_076e6b8e4df60c46) }

var fileDescriptor_076e6b8e4df60c46 = []byte{
	// 227 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x12, 0x48, 0x2b, 0x4a, 0x2c,
	0x28, 0x48, 0xd5, 0x4b, 0x2c, 0xc8, 0xd4, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0xe2, 0x82, 0x88,
	0xc4, 0x27, 0x16, 0x64, 0x2a, 0x59, 0x72, 0x71, 0x3b, 0xe7, 0xa7, 0xa5, 0xa5, 0xa6, 0xfa, 0x17,
	0xa5, 0xa4, 0x16, 0x09, 0x69, 0x71, 0xb1, 0x94, 0x54, 0x16, 0xa4, 0x4a, 0x30, 0x2a, 0x30, 0x6a,
	0xf0, 0x19, 0x89, 0xe9, 0x21, 0x54, 0xea, 0x41, 0x94, 0x85, 0x54, 0x16, 0xa4, 0x06, 0x81, 0xd5,
	0x28, 0xa5, 0x71, 0xb1, 0x41, 0xc4, 0x48, 0xd1, 0x25, 0x24, 0xc2, 0xc5, 0x5a, 0x5c, 0x9a, 0x9e,
	0x58, 0x24, 0xc1, 0xa4, 0xc0, 0xa8, 0xc1, 0x11, 0x04, 0xe1, 0x08, 0x49, 0x71, 0x71, 0x14, 0x97,
	0x14, 0xa5, 0xe6, 0xa5, 0x97, 0x64, 0x48, 0x30, 0x2b, 0x30, 0x6a, 0xb0, 0x06, 0xc1, 0xf9, 0x5a,
	0xa6, 0x5c, 0x5c, 0x08, 0x53, 0x84, 0x38, 0xb9, 0x58, 0x9d, 0x7c, 0x1c, 0x9d, 0xbd, 0x05, 0x18,
	0x84, 0xf8, 0xb8, 0xb8, 0x9c, 0x1d, 0x03, 0x02, 0x42, 0x9d, 0x9d, 0x3d, 0xfd, 0xfc, 0x05, 0x18,
	0x85, 0x78, 0xb8, 0x38, 0x5c, 0x83, 0x03, 0x82, 0x5c, 0x83, 0x83, 0xfd, 0x05, 0x98, 0x8c, 0xdc,
	0xb8, 0x78, 0x21, 0xda, 0x82, 0x53, 0x8b, 0xca, 0x32, 0x93, 0x53, 0x85, 0x4c, 0xb9, 0x58, 0x9c,
	0x8a, 0x52, 0xcb, 0x85, 0xc4, 0x31, 0xdd, 0x07, 0xf6, 0xbc, 0x94, 0x10, 0xa6, 0x84, 0x12, 0x43,
	0x12, 0x1b, 0x38, 0xd0, 0x8c, 0x01, 0x01, 0x00, 0x00, 0xff, 0xff, 0x5f, 0xd7, 0x02, 0xfb, 0x48,
	0x01, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// CoffeeServiceClient is the client API for CoffeeService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type CoffeeServiceClient interface {
	Brew(ctx context.Context, in *CoffeeOrder, opts ...grpc.CallOption) (*Coffee, error)
}

type coffeeServiceClient struct {
	cc *grpc.ClientConn
}

func NewCoffeeServiceClient(cc *grpc.ClientConn) CoffeeServiceClient {
	return &coffeeServiceClient{cc}
}

func (c *coffeeServiceClient) Brew(ctx context.Context, in *CoffeeOrder, opts ...grpc.CallOption) (*Coffee, error) {
	out := new(Coffee)
	err := c.cc.Invoke(ctx, "/frappe_api.CoffeeService/Brew", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// CoffeeServiceServer is the server API for CoffeeService service.
type CoffeeServiceServer interface {
	Brew(context.Context, *CoffeeOrder) (*Coffee, error)
}

func RegisterCoffeeServiceServer(s *grpc.Server, srv CoffeeServiceServer) {
	s.RegisterService(&_CoffeeService_serviceDesc, srv)
}

func _CoffeeService_Brew_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CoffeeOrder)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CoffeeServiceServer).Brew(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/frappe_api.CoffeeService/Brew",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CoffeeServiceServer).Brew(ctx, req.(*CoffeeOrder))
	}
	return interceptor(ctx, in, info, handler)
}

var _CoffeeService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "frappe_api.CoffeeService",
	HandlerType: (*CoffeeServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Brew",
			Handler:    _CoffeeService_Brew_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "frappe.api.proto",
}
