terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

module "ec2_creation" {
  source         = "git::https://github.com/santhosh0811/Terraform_source_code_Santhosh.git//terraform_module/ec2-creation?ref=main"
  vpc_cidr_block = "10.0.0.0/16"
  ami_id         = "ami-07eef52105e8a2059"
  instance_type  = "t2.micro"
}