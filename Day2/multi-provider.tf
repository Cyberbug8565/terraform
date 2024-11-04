provider "aws" {
  alias ="inst1"
  region ="us-east-1"
}
provider "azurerm" {
  subscription_id = "your-azure-subscription-id"
  client_id = "your-azure-client-id"
  client_secret = "your-azure-client-secret"
  tenant_id = "your-azure-tenant-id"
}
#if we dont have azure cli we have to provide the following details but aws we have aws cli we have aws cli or else the syntax would be more complicated 
resource "aws_instance" "example1"{
    ami = "ami-0866a3c8686eaeeba"  # Specify an appropriate AMI ID
}
resource "azurerm_virtual_machine" "main" {
  name                  = "${var.prefix}-vm"
  location              = azurerm_resource_group.example.location
  vm_size               = "Standard_DS1_v2"
}