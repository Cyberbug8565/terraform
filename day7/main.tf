provider "aws"{  
  region = "us-east-1"
}
provider "vault" {
  address= "http://Ip address"
  skip_child_token = true
  auth_login {
     path = "auth/approle/login"
     parameters = {
        role_id = "You should provide role id"
        secret_id = "You should provide secret id"
      }
     }
}
data "vault_kv_secret_v2" "example"{
  mount = "the name of the file"
  name = "name of the secret"
}

resource "aws_instance" "example" {
  ami                    = "ami-0261755bbcb8c4a84"
  instance_type          = "t2.micro"
  tags = {
    secret = data.vault_kv_secret_v2.example.data["username"]
}}