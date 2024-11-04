provider "aws" {
  alias ="inst1"
  region ="us-east-1"
}
provider "aws" {
  alias ="inst2"
  region ="us-west-1"
}
resource "aws_instance" "example1"{
    ami = "ami-0866a3c8686eaeeba"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    provider ="aws.inst1"
}
resource "aws_instance" "example2"{
    ami = "ami-0866a3c8686eaeeba"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    provider ="aws.inst2"
}

