terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00eeedc4036573771"
  instance_type = "t2.micro"
  key_name = "Lucas estudos IAC"
  # user_data = <<-EOF
  # #!/bin/bash
  # cd /home/ubuntu
  # echo "<h1>Feito com terraform e eof</h1>" > index.html
  # nohup busybox httpd -f -p 8080 &
  # EOF
  tags = {
    Name = "Terraform Ansible Python"
  }
}
