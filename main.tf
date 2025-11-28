provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "network" {
  source="./modules/network/"
}
module "ec2-instances" {
  source="./modules/ec2-instances/"
 
 }
