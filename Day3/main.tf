provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    source ="/EC2_instance"
    ami = "ami-0866a3c8686eaeeba"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"

}