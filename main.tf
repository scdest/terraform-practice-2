module "aws_vpc" {
  source     = "./modules/aws_network"
  vpc_name = "my-vpc"
  subnet_name = "my-subnet"
  cidr = "192.168.101.0/24"
}

module "aws_resources" {
  source = "./modules/aws_resources"
  addresses = ["192.168.101.100"]
  availability_zone = "us-east-1c"
  script_data = "echo hi > /test.txt"
  instance_name = "my-test-instance"
  instance_type = "t2.micro"
  volume_size = 1
  ebs_type = "gp2"
  instance_ami_id = "ami-0ff8a91507f77f867"
  subnet_id = module.aws_vpc.subnet_id
}