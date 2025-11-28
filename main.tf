provider "aws" {
  region = var.region
  }

module "network" {
  source="./modules/network/"
}
module "ec2-instances" {
  source="./modules/ec2-instances/"
 
 }
