provider "aws" {
  region = var.region
}
variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
module "network" {
  source = "./modules/network"
}
module "ec2-instances" {
  source="./modules/ec2-instances/"
 }
