provider "aws" {
  region = var.region
  AWS_ACCESS_KEY_ID = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
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
