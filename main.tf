variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
  region = var.region
}
module "ec2-instances" {
  source="./modules/ec2-instances/"
 }
