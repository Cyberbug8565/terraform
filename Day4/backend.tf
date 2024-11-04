terraform {
backend "s3"{
   bucket="rounak-s3-demo-xyz"
   region="us-east-1"
   key="Rounak/terraform.tfstate"
   dynamodb_table = "terraform_lock"
}
}