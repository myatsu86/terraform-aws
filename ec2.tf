# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
  profile = "default"
}

resource "aws_instance" "terraform-demo" {
    ami = "ami-01938df366ac2d954"
    instance_type = "t2.micro"

    tags = {
        Name = "tf-ec2-demo"
    }
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}