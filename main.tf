provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source="./modules/vpc/"
}
module "ec2" {
  source="./modules/ec2/"
 
 }
