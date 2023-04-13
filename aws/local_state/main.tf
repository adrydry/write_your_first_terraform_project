terraform {                                                          
  provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAUJEDML6P2QGGBPWR"
  secret_key = "WeSywPn3Rc76HYDR4etCHQnT/uex8XBzjZc+yHwIy"
  required_version = ">= 1.4.4"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

