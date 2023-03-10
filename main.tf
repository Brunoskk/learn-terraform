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
  profile = "<your-profile>"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09cd747c78a9add63"
  instance_type = "t2.micro"
  key_name      = "alura-estudo"
  # user_data = <<-EOF
  #                #!/bin/bash
  #                cd /home/ec2-user
  #                echo "<h1>Feito com Terraform!</h1>" > index.html
  #                nohup busybox httpd -f -p 8080 &
  #                EOF

  tags = {
    Name = "Terraform Ansible Python"
  }
}
