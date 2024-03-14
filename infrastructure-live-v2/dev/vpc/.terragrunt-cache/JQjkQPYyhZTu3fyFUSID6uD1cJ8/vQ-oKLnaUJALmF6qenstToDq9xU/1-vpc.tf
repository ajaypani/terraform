resource "aws_vpc" "this" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  enable_dns_support = true
  enable_dns_hostnames = true
  //enable_classic_link         = "false"
  //assign_generated_cidr_block = "false"

  tags = {
    Name = "${var.env}-main"
  }
}