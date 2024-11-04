provider "aws"{
  region = "us-east-1"
}
resource "aws_instance" "abhishek"{
   instance_type ="t2.micro"
   ami ="ami-0866a3c8686eaeeba"
}
resource "aws_s3_bucket" "s3_bucket" {
   bucket = "rounak-s3-demo-xyz"
}
resource "aws_dynamodb_table" "terraform_lock"{
  name ="terraform-lock"
  billing_mode ="PAY_PER_REQUEST"
  hash_key ="LockID"
attribute{
   name ="LockID"
   type="S"
}