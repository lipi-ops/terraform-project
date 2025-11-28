provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.10.10.0/27"
  tags = {
    Name = "myvpc"
  }
}
resource "aws_subnet" "mysubnet" {

  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.10.10.0/28"
  availability_zone = "ap-south-1a"
  }

