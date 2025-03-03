aws_region = "us-west-2"

vpc_cidr = "172.0.0.0/16"
public_subnet_cidr = "172.0.1.0/24"
private_subnet_cidr = "172.0.2.0/24"

availability_zone = "us-west-2a"

ami_id = "ami-00c257e12d6828491"
instance_type = "t2.micro"
key_name = "terraform_ec2_key"

security_group_ingress = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

security_group_egress = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
