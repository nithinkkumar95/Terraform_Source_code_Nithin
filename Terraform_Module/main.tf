terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "ec2_creation" {
  source          = "github.com/nithinkkumar95/Terraform_Source_code_Nithin//Terraform_Module/EC2_Creation"
  vpc_cidr_block  = var.vpc_cidr_block
  subnet_cidr     = var.subnet_cidr
  ami_id          = var.ami_id
  instance_type   = var.instance_type
}