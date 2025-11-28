provider "aws" {
  region = var.region
  }

module "network" {
  source="./modules/network/"
region = var.region
}
module "ec2-instances" {
  source="./modules/ec2-instances/"
 }
