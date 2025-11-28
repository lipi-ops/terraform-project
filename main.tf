provider "aws" {
  region = var.region
  AWS_ACCESS_KEY_ID = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
}

module "vpc" {
  source="./modules/vpc/"
}
module "ec2" {
  source="./modules/ec2/"
 
 }
