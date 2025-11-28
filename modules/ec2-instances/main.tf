resource "aws_instance" "myserver" {
  ami = "ami-0d176f79571d18a8f"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  tags = {
       Name = "myserver"
   }
}
