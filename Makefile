protogen :
	@echo "Creating client stubs based on proto files"
	protoc -I frappe-contracts/api frappe.api.proto --go_out=plugins=grpc:frappe-contracts/api
	protoc -I frappe-contracts/api frappe.api.proto --dart_out=grpc:frappe_client/lib/api
