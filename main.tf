provider "aws" {
  region = "eu-central-1"
}

variable "name" {
  default = ""
}

resource "aws_instance" "this" {
  ami = "ami-043097594a7df80ec"
  instance_type = "t3.micro"

  tags = {
    Name=var.name
  }
}