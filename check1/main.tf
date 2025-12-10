provider "aws" {
  region = "ap-south-1"
}

variable "environment" {
  type = string
}

variable "number_of_servers" {
  type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-0f8a761c11a5375ef"
    instance_type = "t2.micro"
    count = var.number_of_servers == "prod" ? 1 : 0
    tags = {
        Name = "ec2-${var.environment}"
    }
}
